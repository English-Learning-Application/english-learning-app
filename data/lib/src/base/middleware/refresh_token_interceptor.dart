import 'dart:collection';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';
import 'package:tuple/tuple.dart';

import '../../../data.dart';

@Injectable()
class RefreshTokenInterceptor extends BaseInterceptor {
  final AppPreferences _appPreferences;
  final RefreshTokenApiService _refreshTokenApiService;
  final NonAuthAppServerApiClient _nonAuthAppServerApiClient;

  RefreshTokenInterceptor(
    this._appPreferences,
    this._refreshTokenApiService,
    this._nonAuthAppServerApiClient,
  );

  bool _isRefreshing = false;
  final _queue = Queue<Tuple2<RequestOptions, ErrorInterceptorHandler>>();

  @override
  int get priority => BaseInterceptor.refreshTokenPriority;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized ||
        err.response?.statusCode == HttpStatus.forbidden ||
        err.response?.statusCode == HttpStatus.badRequest ||
        err.response?.statusCode == HttpStatus.internalServerError) {
      final options = err.response?.requestOptions;
      _onExpiredToken(options: options!, handler: handler);
    } else {
      handler.next(err);
    }
  }

  Future<void> _onExpiredToken({
    required RequestOptions options,
    required ErrorInterceptorHandler handler,
  }) async {
    _queue.addLast(Tuple2(options, handler));

    if (!_isRefreshing) {
      _isRefreshing = true;
      try {
        final newToken = await _newToken();
        await _onRefreshTokenSuccess(newToken);
      } catch (e) {
        _onRefreshTokenError(e);
      } finally {
        _isRefreshing = false;
        _queue.clear();
      }
    }
  }

  Future<String> _newToken() async {
    _isRefreshing = true;
    final refreshToken = await _appPreferences.refreshToken;
    final refreshTokenResponse =
        await _refreshTokenApiService.refreshToken(refreshToken);
    await _appPreferences
        .saveAccessToken(refreshTokenResponse?.data?.accessToken ?? '');
    await _appPreferences
        .saveRefreshToken(refreshTokenResponse?.data?.refreshToken ?? '');
    return refreshTokenResponse?.data?.accessToken ?? '';
  }

  void _onRefreshTokenError(Object e) {
    for (var element in _queue) {
      final options = element.item1;
      final handler = element.item2;
      handler.next(
        DioException(
          requestOptions: options,
          error: e,
        ),
      );
    }
  }

  Future<void> _onRefreshTokenSuccess(String newToken) async {
    await Future.wait(
      _queue
          .map(
            (requestInfo) => _requestWithNewToken(
              options: requestInfo.item1,
              handler: requestInfo.item2,
              newToken: newToken,
            ),
          )
          .toList(),
    );
  }

  Future<void> _requestWithNewToken({
    required RequestOptions options,
    required ErrorInterceptorHandler handler,
    required String newToken,
  }) async {
    _putAccessToken(headers: options.headers, accessToken: newToken);
    try {
      final resp = await _nonAuthAppServerApiClient.dio.fetch(options);
      handler.resolve(resp);
    } catch (e) {
      handler.next(
        DioException(requestOptions: options, error: e),
      );
    }
  }

  void _putAccessToken({
    required Map<String, dynamic> headers,
    required String accessToken,
  }) {
    headers[ServerRequestResponseConstants.basicAuthorization] =
        '${ServerRequestResponseConstants.bearer} $accessToken';
  }
}
