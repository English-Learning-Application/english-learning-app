import 'package:dio/dio.dart';
import 'package:services/services.dart';

abstract class BaseInterceptor extends InterceptorsWrapper with LogMixin {
  static const basicAuthPriority = 40;
  static const connectivityPriority = 99;
  static const customLogPriority = 1;
  static const headerPriority = 19;
  static const accessTokenPriority = 20;
  static const refreshTokenPriority = 30;
  static const retryOnErrorPriority = 100;
  // Higher priority will be executed first
  // Lower priority will be executed last
  int get priority;
}
