import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../data.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  final AppAssetsService _appAssetsService;
  final AppApiService _appAPiService;
  final AppPreferences _appPreferences;
  final ApiRandomUserDataMapper _apiRandomUserDataMapper;
  final Connectivity _connectivity;
  final AppThemeDataMapper _appThemeDataMapper;
  final ApiUserDataMapper _apiUserDataMapper;

  AppRepositoryImpl(
    this._appAssetsService,
    this._appAPiService,
    this._appPreferences,
    this._apiRandomUserDataMapper,
    this._appThemeDataMapper,
    this._apiUserDataMapper,
  ) : _connectivity = GetIt.instance.get<Connectivity>();

  @override
  Future<PagedList<RandomUser>> getUsers({
    required int page,
    required int? limit,
  }) async {
    final resp = await _appAPiService.getUsers(page: page, limit: limit);
    return PagedList<RandomUser>(
      data: _apiRandomUserDataMapper.mapToListEntities(resp?.results),
    );
  }

  @override
  Future<bool> isFirstLaunchApp() async {
    final resp = _appPreferences.isFirstLaunchApp;

    if (resp) {
      await _appPreferences.saveIsFirstLaunchApp(false);
    }
    return resp;
  }

  @override
  AppThemeType get appTheme =>
      _appThemeDataMapper.mapToEntity(_appPreferences.appTheme);

  @override
  bool get isLoggedIn => _appPreferences.isLoggedIn;

  @override
  LanguageCode get languageCode => LanguageCode.values.firstWhere(
        (e) => e.serverValue == _appPreferences.languageCode,
        orElse: () => LanguageCode.defaultValue,
      );

  @override
  Stream<bool> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged.map(
        (status) => status.contains(ConnectivityResult.none) ? false : true,
      );

  @override
  Future<bool> saveAppTheme(AppThemeType appTheme) async {
    return await _appPreferences.saveAppTheme(
      _appThemeDataMapper.mapToData(appTheme),
    );
  }

  @override
  Future<bool> saveLanguageCode(LanguageCode languageCode) async {
    return await _appPreferences.saveLanguageCode(
      languageCode.serverValue,
    );
  }

  @override
  void clearCurrentUserData() async {
    return await _appPreferences.clearCurrentUserData();
  }

  @override
  User getUserPreference() {
    return _apiUserDataMapper.mapToEntity(_appPreferences.currentUser);
  }

  @override
  Future<PagedList<File>> getImagesPaged(int page) async {
    final images = await _appAssetsService.getImagesPaged(page);

    return PagedList<File>(
      data: images,
    );
  }
}
