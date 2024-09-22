import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:services/services.dart';

import '../../../data.dart';

class BasicAuthInterceptor extends BaseInterceptor {
  final String username;
  final String password;

  BasicAuthInterceptor({
    required this.username,
    required this.password,
  });

  @override
  int get priority => BaseInterceptor.basicAuthPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ServerRequestResponseConstants.basicAuthorization] =
        basicAuth;
    handler.next(options);
  }

  String get basicAuth =>
      'Basic ${base64Encode(utf8.encode('$username:$password'))}';
}
