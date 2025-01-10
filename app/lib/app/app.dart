import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../app.dart';

class App extends StatefulWidget {
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends BasePageState<App, AppViewModel> {
  final _appRouter = GetIt.instance.get<AppRouter>();
  @override
  String get screenName => 'App';

  @override
  bool get isAppWidget => true;

  @override
  void initViewModels() {}

  @override
  Widget buildPage(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        DeviceConstants.designDeviceWidth,
        DeviceConstants.designDeviceHeight,
      ),
      builder: (context, _) => Selector<AppViewModel, AppViewModelData>(
        selector: (_, vm) => vm.viewModelData,
        shouldRebuild: (previous, next) =>
            previous.languageCode != next.languageCode ||
            previous.appTheme != next.appTheme,
        builder: (_, vmData, __) {
          return MaterialApp.router(
            builder: (_, child) {
              final MediaQueryData data = MediaQuery.of(_);
              return MediaQuery(
                data: data.copyWith(
                  textScaler: const TextScaler.linear(1),
                ),
                child: child ?? const SizedBox.shrink(),
              );
            },
            title: UIConstants.materialAppTitle,
            color: UIConstants.taskMenuMaterialAppColor,
            themeMode: vmData.appTheme.getThemeMode,
            darkTheme: darkTheme.copyWith(
              scaffoldBackgroundColor: AppColors.of(context).backgroundColor,
              primaryColor: AppColors.of(context).primaryColor,
              colorScheme: Theme.of(context).colorScheme.copyWith(
                    primary: AppColors.of(context).primaryColor,
                  ),
              appBarTheme: Theme.of(context).appBarTheme.copyWith(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    foregroundColor: Colors.transparent,
                  ),
            ),
            theme: lightTheme.copyWith(
              scaffoldBackgroundColor: AppColors.of(context).backgroundColor,
              primaryColor: AppColors.of(context).primaryColor,
              colorScheme: Theme.of(context).colorScheme.copyWith(
                    primary: AppColors.of(context).primaryColor,
                  ),
              appBarTheme: Theme.of(context).appBarTheme.copyWith(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    foregroundColor: Colors.transparent,
                  ),
            ),
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(
              navigatorObservers: () => [
                AppNavigatorObserver(),
              ],
              deepLinkBuilder: (deeplink) {
                return DeepLink.defaultPath;
              },
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
            locale: Locale(vmData.languageCode.localeCode),
            localeResolutionCallback: (locale, supportedLocales) {
              return supportedLocales.contains(locale)
                  ? locale
                  : const Locale(LocaleConstants.defaultLocale);
            },
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
