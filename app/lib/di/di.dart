import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:audioplayers/audioplayers.dart';

import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() => getIt.init();

@module
abstract class AppModules {
  @lazySingleton
  FlutterTts get flutterTts => FlutterTts();

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance;

  @lazySingleton
  AudioPlayer get audioPlayer => AudioPlayer();
}
