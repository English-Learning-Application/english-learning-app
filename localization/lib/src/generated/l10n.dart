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

  /// `Register to access all of our services`
  String get registerDescription {
    return Intl.message(
      'Register to access all of our services',
      name: 'registerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get usernameHint {
    return Intl.message(
      'Enter your username',
      name: 'usernameHint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password confirmation does not match`
  String get invalidConfirmationPassword {
    return Intl.message(
      'Password confirmation does not match',
      name: 'invalidConfirmationPassword',
      desc: '',
      args: [],
    );
  }

  /// `Learn anywhere, anytime`
  String get learnAnywhere {
    return Intl.message(
      'Learn anywhere, anytime',
      name: 'learnAnywhere',
      desc: '',
      args: [],
    );
  }

  /// `Access thousands of courses, resources, and learning materials on the go.`
  String get learnAnywhereDescription {
    return Intl.message(
      'Access thousands of courses, resources, and learning materials on the go.',
      name: 'learnAnywhereDescription',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get getStarted {
    return Intl.message(
      'Get started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Multi-language support`
  String get multiLanguage {
    return Intl.message(
      'Multi-language support',
      name: 'multiLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Our app supports multiple languages to help you learn in your preferred language.`
  String get multiLanguageDescription {
    return Intl.message(
      'Our app supports multiple languages to help you learn in your preferred language.',
      name: 'multiLanguageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Track your progress`
  String get trackYourProgress {
    return Intl.message(
      'Track your progress',
      name: 'trackYourProgress',
      desc: '',
      args: [],
    );
  }

  /// `Track your progress and see how far you've come on your learning journey.`
  String get trackYourProgressDescription {
    return Intl.message(
      'Track your progress and see how far you\'ve come on your learning journey.',
      name: 'trackYourProgressDescription',
      desc: '',
      args: [],
    );
  }

  /// `Complete your profile`
  String get completeYourProfile {
    return Intl.message(
      'Complete your profile',
      name: 'completeYourProfile',
      desc: '',
      args: [],
    );
  }

  /// `Complete your profile to access all of our services and get personalized recommendations.`
  String get completeYourProfileDescription {
    return Intl.message(
      'Complete your profile to access all of our services and get personalized recommendations.',
      name: 'completeYourProfileDescription',
      desc: '',
      args: [],
    );
  }

  /// `Select your native language`
  String get selectNativeLanguage {
    return Intl.message(
      'Select your native language',
      name: 'selectNativeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select the language you want to learn`
  String get selectLearningLanguage {
    return Intl.message(
      'Select the language you want to learn',
      name: 'selectLearningLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select your learning modes`
  String get selectLearningModes {
    return Intl.message(
      'Select your learning modes',
      name: 'selectLearningModes',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Vietnamese`
  String get vietnamese {
    return Intl.message(
      'Vietnamese',
      name: 'vietnamese',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get french {
    return Intl.message(
      'French',
      name: 'french',
      desc: '',
      args: [],
    );
  }

  /// `You can choose up to 3 learning modes`
  String get canChooseUpTo3LearningModes {
    return Intl.message(
      'You can choose up to 3 learning modes',
      name: 'canChooseUpTo3LearningModes',
      desc: '',
      args: [],
    );
  }

  /// `Listening`
  String get listening {
    return Intl.message(
      'Listening',
      name: 'listening',
      desc: '',
      args: [],
    );
  }

  /// `Speaking`
  String get speaking {
    return Intl.message(
      'Speaking',
      name: 'speaking',
      desc: '',
      args: [],
    );
  }

  /// `Reading`
  String get reading {
    return Intl.message(
      'Reading',
      name: 'reading',
      desc: '',
      args: [],
    );
  }

  /// `Writing`
  String get writing {
    return Intl.message(
      'Writing',
      name: 'writing',
      desc: '',
      args: [],
    );
  }

  /// `Vocabulary`
  String get vocabulary {
    return Intl.message(
      'Vocabulary',
      name: 'vocabulary',
      desc: '',
      args: [],
    );
  }

  /// `Grammar`
  String get grammar {
    return Intl.message(
      'Grammar',
      name: 'grammar',
      desc: '',
      args: [],
    );
  }

  /// `Choose your learning modes`
  String get chooseLearningModes {
    return Intl.message(
      'Choose your learning modes',
      name: 'chooseLearningModes',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please choose at least 1 learning mode`
  String get pleaseChooseAtLeast1LearningMode {
    return Intl.message(
      'Please choose at least 1 learning mode',
      name: 'pleaseChooseAtLeast1LearningMode',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Courses`
  String get courses {
    return Intl.message(
      'Courses',
      name: 'courses',
      desc: '',
      args: [],
    );
  }

  /// `AI Chatbot`
  String get aiChatbot {
    return Intl.message(
      'AI Chatbot',
      name: 'aiChatbot',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `No username`
  String get noUsername {
    return Intl.message(
      'No username',
      name: 'noUsername',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNo {
    return Intl.message(
      'Phone number',
      name: 'phoneNo',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message(
      'None',
      name: 'none',
      desc: '',
      args: [],
    );
  }

  /// `Native language`
  String get nativeLanguage {
    return Intl.message(
      'Native language',
      name: 'nativeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Learning language`
  String get learningLanguage {
    return Intl.message(
      'Learning language',
      name: 'learningLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Choose what`
  String get chooseWhat {
    return Intl.message(
      'Choose what',
      name: 'chooseWhat',
      desc: '',
      args: [],
    );
  }

  /// `to learn today`
  String get toLearnToday {
    return Intl.message(
      'to learn today',
      name: 'toLearnToday',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get editProfile {
    return Intl.message(
      'Edit profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Choose the language`
  String get chooseTheLanguage {
    return Intl.message(
      'Choose the language',
      name: 'chooseTheLanguage',
      desc: '',
      args: [],
    );
  }

  /// `My in-progress courses`
  String get myInProgressCourses {
    return Intl.message(
      'My in-progress courses',
      name: 'myInProgressCourses',
      desc: '',
      args: [],
    );
  }

  /// `Level`
  String get level {
    return Intl.message(
      'Level',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `Mode`
  String get mode {
    return Intl.message(
      'Mode',
      name: 'mode',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Your category`
  String get yourCategory {
    return Intl.message(
      'Your category',
      name: 'yourCategory',
      desc: '',
      args: [],
    );
  }

  /// `Travel`
  String get travel {
    return Intl.message(
      'Travel',
      name: 'travel',
      desc: '',
      args: [],
    );
  }

  /// `Learn`
  String get learn {
    return Intl.message(
      'Learn',
      name: 'learn',
      desc: '',
      args: [],
    );
  }

  /// `I'm your personal AI chatbot. I can help you with your learning journey. How can I help you today?`
  String get chatbotIntro {
    return Intl.message(
      'I\'m your personal AI chatbot. I can help you with your learning journey. How can I help you today?',
      name: 'chatbotIntro',
      desc: '',
      args: [],
    );
  }

  /// `Type your message here`
  String get chatbotHint {
    return Intl.message(
      'Type your message here',
      name: 'chatbotHint',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Community Hub`
  String get communityHub {
    return Intl.message(
      'Community Hub',
      name: 'communityHub',
      desc: '',
      args: [],
    );
  }

  /// `You have not joined any community yet! Join a community to connect with other learners.`
  String get communityNotJoined {
    return Intl.message(
      'You have not joined any community yet! Join a community to connect with other learners.',
      name: 'communityNotJoined',
      desc: '',
      args: [],
    );
  }

  /// `Join community`
  String get joinCommunity {
    return Intl.message(
      'Join community',
      name: 'joinCommunity',
      desc: '',
      args: [],
    );
  }

  /// `Word`
  String get word {
    return Intl.message(
      'Word',
      name: 'word',
      desc: '',
      args: [],
    );
  }

  /// `Sentence`
  String get sentence {
    return Intl.message(
      'Sentence',
      name: 'sentence',
      desc: '',
      args: [],
    );
  }

  /// `Expression`
  String get expression {
    return Intl.message(
      'Expression',
      name: 'expression',
      desc: '',
      args: [],
    );
  }

  /// `Idiom`
  String get idiom {
    return Intl.message(
      'Idiom',
      name: 'idiom',
      desc: '',
      args: [],
    );
  }

  /// `Phrasal verb`
  String get phrasalVerb {
    return Intl.message(
      'Phrasal verb',
      name: 'phrasalVerb',
      desc: '',
      args: [],
    );
  }

  /// `Tense`
  String get tense {
    return Intl.message(
      'Tense',
      name: 'tense',
      desc: '',
      args: [],
    );
  }

  /// `Phonetic`
  String get phonetic {
    return Intl.message(
      'Phonetic',
      name: 'phonetic',
      desc: '',
      args: [],
    );
  }

  /// `Noun`
  String get noun {
    return Intl.message(
      'Noun',
      name: 'noun',
      desc: '',
      args: [],
    );
  }

  /// `Verb`
  String get verb {
    return Intl.message(
      'Verb',
      name: 'verb',
      desc: '',
      args: [],
    );
  }

  /// `Adjective`
  String get adjective {
    return Intl.message(
      'Adjective',
      name: 'adjective',
      desc: '',
      args: [],
    );
  }

  /// `Adverb`
  String get adverb {
    return Intl.message(
      'Adverb',
      name: 'adverb',
      desc: '',
      args: [],
    );
  }

  /// `Preposition`
  String get preposition {
    return Intl.message(
      'Preposition',
      name: 'preposition',
      desc: '',
      args: [],
    );
  }

  /// `Conjunction`
  String get conjunction {
    return Intl.message(
      'Conjunction',
      name: 'conjunction',
      desc: '',
      args: [],
    );
  }

  /// `Interjection`
  String get interjection {
    return Intl.message(
      'Interjection',
      name: 'interjection',
      desc: '',
      args: [],
    );
  }

  /// `Pronoun`
  String get pronoun {
    return Intl.message(
      'Pronoun',
      name: 'pronoun',
      desc: '',
      args: [],
    );
  }

  /// `Start learning`
  String get startLearning {
    return Intl.message(
      'Start learning',
      name: 'startLearning',
      desc: '',
      args: [],
    );
  }

  /// `Flashcard`
  String get flashcard {
    return Intl.message(
      'Flashcard',
      name: 'flashcard',
      desc: '',
      args: [],
    );
  }

  /// `Quiz`
  String get quiz {
    return Intl.message(
      'Quiz',
      name: 'quiz',
      desc: '',
      args: [],
    );
  }

  /// `Pronunciation`
  String get pronunciation {
    return Intl.message(
      'Pronunciation',
      name: 'pronunciation',
      desc: '',
      args: [],
    );
  }

  /// `Matching`
  String get matching {
    return Intl.message(
      'Matching',
      name: 'matching',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Learned`
  String get learned {
    return Intl.message(
      'Learned',
      name: 'learned',
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
