// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Unidentified error`
  String get error1 {
    return Intl.message(
      'Unidentified error',
      name: 'error1',
      desc: '',
      args: [],
    );
  }

  /// `Unidentified error ({errorCode})`
  String unknownException(Object errorCode) {
    return Intl.message(
      'Unidentified error ($errorCode)',
      name: 'unknownException',
      desc: '',
      args: [errorCode],
    );
  }

  /// `Parse Exception`
  String get parseException {
    return Intl.message(
      'Parse Exception',
      name: 'parseException',
      desc: '',
      args: [],
    );
  }

  /// `Cancellation`
  String get cancellationException {
    return Intl.message(
      'Cancellation',
      name: 'cancellationException',
      desc: '',
      args: [],
    );
  }

  /// `No Internet`
  String get noInternetException {
    return Intl.message(
      'No Internet',
      name: 'noInternetException',
      desc: '',
      args: [],
    );
  }

  /// `Timeout`
  String get timeoutException {
    return Intl.message(
      'Timeout',
      name: 'timeoutException',
      desc: '',
      args: [],
    );
  }

  /// `Bad Certificate`
  String get badCertificateException {
    return Intl.message(
      'Bad Certificate',
      name: 'badCertificateException',
      desc: '',
      args: [],
    );
  }

  /// `Can not connect to host`
  String get canNotConnectToHost {
    return Intl.message(
      'Can not connect to host',
      name: 'canNotConnectToHost',
      desc: '',
      args: [],
    );
  }

  /// `Token expired`
  String get tokenExpired {
    return Intl.message(
      'Token expired',
      name: 'tokenExpired',
      desc: '',
      args: [],
    );
  }

  /// `Wrong username format`
  String get invalidUserName {
    return Intl.message(
      'Wrong username format',
      name: 'invalidUserName',
      desc: '',
      args: [],
    );
  }

  /// `Wrong date time format`
  String get invalidDateTime {
    return Intl.message(
      'Wrong date time format',
      name: 'invalidDateTime',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Press again to exit`
  String get pressAgainToExit {
    return Intl.message(
      'Press again to exit',
      name: 'pressAgainToExit',
      desc: '',
      args: [],
    );
  }

  /// `Everything you need is in one place`
  String get loginTitle {
    return Intl.message(
      'Everything you need is in one place',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Learnings, resources, and support to help you every step of the way on your journey to success.`
  String get loginSubTitle {
    return Intl.message(
      'Learnings, resources, and support to help you every step of the way on your journey to success.',
      name: 'loginSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Login to access all of our services`
  String get loginDescription {
    return Intl.message(
      'Login to access all of our services',
      name: 'loginDescription',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get emailHint {
    return Intl.message(
      'Enter your email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
