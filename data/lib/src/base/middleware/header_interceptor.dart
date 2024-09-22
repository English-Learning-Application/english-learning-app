import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../data.dart';

@Injectable()
class HeaderInterceptor extends BaseInterceptor {
  final AppInfo _appInfo;

  HeaderInterceptor(this._appInfo);

  Map<String, dynamic> _headers = {};

  set headers(Map<String, dynamic> headers) {
    _headers = headers;
  }

  @override
  int get priority => BaseInterceptor.headerPriority;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final userAgent = this.userAgent();
    options.headers[ServerRequestResponseConstants.userAgentKey] = userAgent;
    options.headers[ServerRequestResponseConstants.deviceId] =
        await _appInfo.deviceId;
    options.headers.addAll(_headers);

    handler.next(options);
  }

  String userAgent() {
    return '${Platform.operatingSystem} - ${_appInfo.versionName} (${_appInfo.versionCode})';
  }
}
