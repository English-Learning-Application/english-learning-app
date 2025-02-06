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

  /// `Connect with other learners and join communities to learn together`
  String get communityHubIntro {
    return Intl.message(
      'Connect with other learners and join communities to learn together',
      name: 'communityHubIntro',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get community {
    return Intl.message(
      'Community',
      name: 'community',
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

  /// `You have joined a community! Start learning with other learners.`
  String get communityJoined {
    return Intl.message(
      'You have joined a community! Start learning with other learners.',
      name: 'communityJoined',
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

  /// `Congratulations`
  String get congratulations {
    return Intl.message(
      'Congratulations',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `You have completed the course`
  String get youHaveCompletedTheCourse {
    return Intl.message(
      'You have completed the course',
      name: 'youHaveCompletedTheCourse',
      desc: '',
      args: [],
    );
  }

  /// `Back to courses`
  String get backToCourses {
    return Intl.message(
      'Back to courses',
      name: 'backToCourses',
      desc: '',
      args: [],
    );
  }

  /// `Correct`
  String get correct {
    return Intl.message(
      'Correct',
      name: 'correct',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect`
  String get incorrect {
    return Intl.message(
      'Incorrect',
      name: 'incorrect',
      desc: '',
      args: [],
    );
  }

  /// `You have chosen the correct answer`
  String get youHaveChosenTheCorrectAnswer {
    return Intl.message(
      'You have chosen the correct answer',
      name: 'youHaveChosenTheCorrectAnswer',
      desc: '',
      args: [],
    );
  }

  /// `You have chosen the wrong answer`
  String get youHaveChosenTheWrongAnswer {
    return Intl.message(
      'You have chosen the wrong answer',
      name: 'youHaveChosenTheWrongAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Drag and drop the words to match the correct order`
  String get matchingLearningModeDescription {
    return Intl.message(
      'Drag and drop the words to match the correct order',
      name: 'matchingLearningModeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Please drag and drop the words to match the correct order`
  String get pleaseDragAndDropTheWordsToMatchTheCorrectOrder {
    return Intl.message(
      'Please drag and drop the words to match the correct order',
      name: 'pleaseDragAndDropTheWordsToMatchTheCorrectOrder',
      desc: '',
      args: [],
    );
  }

  /// `You have not matched the words correctly`
  String get youHaveNotMatchedTheWordsCorrectly {
    return Intl.message(
      'You have not matched the words correctly',
      name: 'youHaveNotMatchedTheWordsCorrectly',
      desc: '',
      args: [],
    );
  }

  /// `You have matched the words correctly`
  String get youHaveMatchedTheWordsCorrectly {
    return Intl.message(
      'You have matched the words correctly',
      name: 'youHaveMatchedTheWordsCorrectly',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied`
  String get permissionDenied {
    return Intl.message(
      'Permission denied',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Microphone permission denied by user, please enable it in your settings`
  String get microphonePermissionDenied {
    return Intl.message(
      'Microphone permission denied by user, please enable it in your settings',
      name: 'microphonePermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Course will be available soon`
  String get courseWillBeAvailableSoon {
    return Intl.message(
      'Course will be available soon',
      name: 'courseWillBeAvailableSoon',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message(
      'Subject',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `Positive`
  String get positiveTense {
    return Intl.message(
      'Positive',
      name: 'positiveTense',
      desc: '',
      args: [],
    );
  }

  /// `Negative`
  String get negativeTense {
    return Intl.message(
      'Negative',
      name: 'negativeTense',
      desc: '',
      args: [],
    );
  }

  /// `Interrogative`
  String get interrogativeTense {
    return Intl.message(
      'Interrogative',
      name: 'interrogativeTense',
      desc: '',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message(
      'Previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `Assessment`
  String get assessment {
    return Intl.message(
      'Assessment',
      name: 'assessment',
      desc: '',
      args: [],
    );
  }

  /// `Preview sentence`
  String get previewSentence {
    return Intl.message(
      'Preview sentence',
      name: 'previewSentence',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get score {
    return Intl.message(
      'Score',
      name: 'score',
      desc: '',
      args: [],
    );
  }

  /// `Listen and match`
  String get listenAndMatch {
    return Intl.message(
      'Listen and match',
      name: 'listenAndMatch',
      desc: '',
      args: [],
    );
  }

  /// `Verify your email`
  String get verifyEmail {
    return Intl.message(
      'Verify your email',
      name: 'verifyEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email to access all of our services`
  String get verifyEmailSuggestion {
    return Intl.message(
      'Please verify your email to access all of our services',
      name: 'verifyEmailSuggestion',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a verification email to your email address. Please verify your email to access all of our services.`
  String get verifyEmailDescription {
    return Intl.message(
      'We have sent a verification email to your email address. Please verify your email to access all of our services.',
      name: 'verifyEmailDescription',
      desc: '',
      args: [],
    );
  }

  /// `Send email`
  String get sendEmail {
    return Intl.message(
      'Send email',
      name: 'sendEmail',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP at {time}`
  String resendOtpAt(Object time) {
    return Intl.message(
      'Resend OTP at $time',
      name: 'resendOtpAt',
      desc: '',
      args: [time],
    );
  }

  /// `Resend OTP`
  String get resendOtp {
    return Intl.message(
      'Resend OTP',
      name: 'resendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Input your phone number`
  String get inputYourPhoneNumber {
    return Intl.message(
      'Input your phone number',
      name: 'inputYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Verify your phone number`
  String get verifyPhoneNumber {
    return Intl.message(
      'Verify your phone number',
      name: 'verifyPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Verify your phone number to receive our latest updates`
  String get verifyPhoneNumberSuggestion {
    return Intl.message(
      'Verify your phone number to receive our latest updates',
      name: 'verifyPhoneNumberSuggestion',
      desc: '',
      args: [],
    );
  }

  /// `We have sent an OTP to your phone number. Please verify your phone number to receive our latest updates.`
  String get verifyPhoneNumberDescription {
    return Intl.message(
      'We have sent an OTP to your phone number. Please verify your phone number to receive our latest updates.',
      name: 'verifyPhoneNumberDescription',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number`
  String get invalidPhoneNumber {
    return Intl.message(
      'Invalid phone number',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Send OTP`
  String get sendOtp {
    return Intl.message(
      'Send OTP',
      name: 'sendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number has been verified successfully`
  String get verifyPhoneNumberSuccess {
    return Intl.message(
      'Your phone number has been verified successfully',
      name: 'verifyPhoneNumberSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Update profile picture`
  String get updateProfilePicture {
    return Intl.message(
      'Update profile picture',
      name: 'updateProfilePicture',
      desc: '',
      args: [],
    );
  }

  /// `Subscription`
  String get subscription {
    return Intl.message(
      'Subscription',
      name: 'subscription',
      desc: '',
      args: [],
    );
  }

  /// `Gold Plan`
  String get goldPlan {
    return Intl.message(
      'Gold Plan',
      name: 'goldPlan',
      desc: '',
      args: [],
    );
  }

  /// `Premium Plan`
  String get premiumPlan {
    return Intl.message(
      'Premium Plan',
      name: 'premiumPlan',
      desc: '',
      args: [],
    );
  }

  /// `Free Plan`
  String get freePlan {
    return Intl.message(
      'Free Plan',
      name: 'freePlan',
      desc: '',
      args: [],
    );
  }

  /// `Additional access to community hub, unlimited courses, and personalized recommendations`
  String get goldPlanDescription {
    return Intl.message(
      'Additional access to community hub, unlimited courses, and personalized recommendations',
      name: 'goldPlanDescription',
      desc: '',
      args: [],
    );
  }

  /// `Additional access to community hub, AI chatbot, unlimited courses, and personalized recommendations`
  String get premiumPlanDescription {
    return Intl.message(
      'Additional access to community hub, AI chatbot, unlimited courses, and personalized recommendations',
      name: 'premiumPlanDescription',
      desc: '',
      args: [],
    );
  }

  /// `Basic access to courses and resources`
  String get freePlanDescription {
    return Intl.message(
      'Basic access to courses and resources',
      name: 'freePlanDescription',
      desc: '',
      args: [],
    );
  }

  /// `Access to AI chatbot`
  String get accessToAiChatbot {
    return Intl.message(
      'Access to AI chatbot',
      name: 'accessToAiChatbot',
      desc: '',
      args: [],
    );
  }

  /// `Get personalized recommendations and support from our AI chatbot`
  String get accessToAiChatbotDesc {
    return Intl.message(
      'Get personalized recommendations and support from our AI chatbot',
      name: 'accessToAiChatbotDesc',
      desc: '',
      args: [],
    );
  }

  /// `Access to community hub`
  String get accessToCommunityHub {
    return Intl.message(
      'Access to community hub',
      name: 'accessToCommunityHub',
      desc: '',
      args: [],
    );
  }

  /// `Connect with other learners and join communities to learn together`
  String get accessToCommunityHubDesc {
    return Intl.message(
      'Connect with other learners and join communities to learn together',
      name: 'accessToCommunityHubDesc',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message(
      'Day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get week {
    return Intl.message(
      'Week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Purchase`
  String get purchase {
    return Intl.message(
      'Purchase',
      name: 'purchase',
      desc: '',
      args: [],
    );
  }

  /// `Already purchased`
  String get alreadyPurchased {
    return Intl.message(
      'Already purchased',
      name: 'alreadyPurchased',
      desc: '',
      args: [],
    );
  }

  /// `Switch`
  String get switchText {
    return Intl.message(
      'Switch',
      name: 'switchText',
      desc: '',
      args: [],
    );
  }

  /// `AI chatbot subscription is required`
  String get chatBotRequired {
    return Intl.message(
      'AI chatbot subscription is required',
      name: 'chatBotRequired',
      desc: '',
      args: [],
    );
  }

  /// `AI chatbot subscription is required to access this feature`
  String get chatBotRequiredDescription {
    return Intl.message(
      'AI chatbot subscription is required to access this feature',
      name: 'chatBotRequiredDescription',
      desc: '',
      args: [],
    );
  }

  /// `Community hub subscription is required`
  String get communityHubRequired {
    return Intl.message(
      'Community hub subscription is required',
      name: 'communityHubRequired',
      desc: '',
      args: [],
    );
  }

  /// `Community hub subscription is required to access this feature`
  String get communityHubRequiredDescription {
    return Intl.message(
      'Community hub subscription is required to access this feature',
      name: 'communityHubRequiredDescription',
      desc: '',
      args: [],
    );
  }

  /// `This feature is only available for premium users`
  String get thisFeatureIsOnlyAvailableForPremiumUsers {
    return Intl.message(
      'This feature is only available for premium users',
      name: 'thisFeatureIsOnlyAvailableForPremiumUsers',
      desc: '',
      args: [],
    );
  }

  /// `Create new session`
  String get createNewSession {
    return Intl.message(
      'Create new session',
      name: 'createNewSession',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete this chatbot session?`
  String get permissionToDeleteChatbotSession {
    return Intl.message(
      'Do you want to delete this chatbot session?',
      name: 'permissionToDeleteChatbotSession',
      desc: '',
      args: [],
    );
  }

  /// `Chatting session`
  String get chattingSession {
    return Intl.message(
      'Chatting session',
      name: 'chattingSession',
      desc: '',
      args: [],
    );
  }

  /// `Chat with your friends`
  String get chatWithYourFriends {
    return Intl.message(
      'Chat with your friends',
      name: 'chatWithYourFriends',
      desc: '',
      args: [],
    );
  }

  /// `No friend chats found`
  String get noFriendChatsFound {
    return Intl.message(
      'No friend chats found',
      name: 'noFriendChatsFound',
      desc: '',
      args: [],
    );
  }

  /// `Message session name`
  String get messageSessionName {
    return Intl.message(
      'Message session name',
      name: 'messageSessionName',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get createText {
    return Intl.message(
      'Create',
      name: 'createText',
      desc: '',
      args: [],
    );
  }

  /// `{name} has joined the chat`
  String hasJoinedTheChat(Object name) {
    return Intl.message(
      '$name has joined the chat',
      name: 'hasJoinedTheChat',
      desc: '',
      args: [name],
    );
  }

  /// `Join`
  String get joinText {
    return Intl.message(
      'Join',
      name: 'joinText',
      desc: '',
      args: [],
    );
  }

  /// `Participants`
  String get participants {
    return Intl.message(
      'Participants',
      name: 'participants',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `(You)`
  String get isYouText {
    return Intl.message(
      '(You)',
      name: 'isYouText',
      desc: '',
      args: [],
    );
  }

  /// `User info`
  String get userInfo {
    return Intl.message(
      'User info',
      name: 'userInfo',
      desc: '',
      args: [],
    );
  }

  /// `Learning info`
  String get learningInfo {
    return Intl.message(
      'Learning info',
      name: 'learningInfo',
      desc: '',
      args: [],
    );
  }

  /// `Lessons`
  String get lessons {
    return Intl.message(
      'Lessons',
      name: 'lessons',
      desc: '',
      args: [],
    );
  }

  /// `To do`
  String get todoText {
    return Intl.message(
      'To do',
      name: 'todoText',
      desc: '',
      args: [],
    );
  }

  /// `Create to do`
  String get createTodo {
    return Intl.message(
      'Create to do',
      name: 'createTodo',
      desc: '',
      args: [],
    );
  }

  /// `Update to do`
  String get updateTodo {
    return Intl.message(
      'Update to do',
      name: 'updateTodo',
      desc: '',
      args: [],
    );
  }

  /// `To do title`
  String get todoTitle {
    return Intl.message(
      'To do title',
      name: 'todoTitle',
      desc: '',
      args: [],
    );
  }

  /// `To do description`
  String get todoDescription {
    return Intl.message(
      'To do description',
      name: 'todoDescription',
      desc: '',
      args: [],
    );
  }

  /// `To do type`
  String get todoType {
    return Intl.message(
      'To do type',
      name: 'todoType',
      desc: '',
      args: [],
    );
  }

  /// `To do priority`
  String get todoPriority {
    return Intl.message(
      'To do priority',
      name: 'todoPriority',
      desc: '',
      args: [],
    );
  }

  /// `To do status`
  String get todoStatus {
    return Intl.message(
      'To do status',
      name: 'todoStatus',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Course`
  String get course {
    return Intl.message(
      'Course',
      name: 'course',
      desc: '',
      args: [],
    );
  }

  /// `Learn vocabulary`
  String get learnVocabulary {
    return Intl.message(
      'Learn vocabulary',
      name: 'learnVocabulary',
      desc: '',
      args: [],
    );
  }

  /// `Learn grammar`
  String get learnGrammar {
    return Intl.message(
      'Learn grammar',
      name: 'learnGrammar',
      desc: '',
      args: [],
    );
  }

  /// `Learn speaking`
  String get learnSpeaking {
    return Intl.message(
      'Learn speaking',
      name: 'learnSpeaking',
      desc: '',
      args: [],
    );
  }

  /// `Learn listening`
  String get learnListening {
    return Intl.message(
      'Learn listening',
      name: 'learnListening',
      desc: '',
      args: [],
    );
  }

  /// `Learn reading`
  String get learnReading {
    return Intl.message(
      'Learn reading',
      name: 'learnReading',
      desc: '',
      args: [],
    );
  }

  /// `Learn writing`
  String get learnWriting {
    return Intl.message(
      'Learn writing',
      name: 'learnWriting',
      desc: '',
      args: [],
    );
  }

  /// `Flashcard learning`
  String get flashCardLearning {
    return Intl.message(
      'Flashcard learning',
      name: 'flashCardLearning',
      desc: '',
      args: [],
    );
  }

  /// `Quiz learning`
  String get quizLearning {
    return Intl.message(
      'Quiz learning',
      name: 'quizLearning',
      desc: '',
      args: [],
    );
  }

  /// `Matching learning`
  String get matchingLearning {
    return Intl.message(
      'Matching learning',
      name: 'matchingLearning',
      desc: '',
      args: [],
    );
  }

  /// `Pronunciation learning`
  String get pronunciationLearning {
    return Intl.message(
      'Pronunciation learning',
      name: 'pronunciationLearning',
      desc: '',
      args: [],
    );
  }

  /// `Low`
  String get lowPriority {
    return Intl.message(
      'Low',
      name: 'lowPriority',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get highPriority {
    return Intl.message(
      'High',
      name: 'highPriority',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get mediumPriority {
    return Intl.message(
      'Medium',
      name: 'mediumPriority',
      desc: '',
      args: [],
    );
  }

  /// `Urgent`
  String get urgentPriority {
    return Intl.message(
      'Urgent',
      name: 'urgentPriority',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get deleteTodo {
    return Intl.message(
      'Delete',
      name: 'deleteTodo',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get doneTodo {
    return Intl.message(
      'Done',
      name: 'doneTodo',
      desc: '',
      args: [],
    );
  }

  /// `Undone`
  String get undoneTodo {
    return Intl.message(
      'Undone',
      name: 'undoneTodo',
      desc: '',
      args: [],
    );
  }

  /// `You have no to do, create one now`
  String get todoIsEmptyText {
    return Intl.message(
      'You have no to do, create one now',
      name: 'todoIsEmptyText',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete this to do?`
  String get todoDeleteConfirmation {
    return Intl.message(
      'Do you want to delete this to do?',
      name: 'todoDeleteConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Achievement`
  String get achievement {
    return Intl.message(
      'Achievement',
      name: 'achievement',
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
