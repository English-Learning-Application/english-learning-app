class AuthenticationEndpoints {
  const AuthenticationEndpoints._();

  static const String auth = '/auth';
  static const String authLogin = '/auth/login';
  static const String authGoogleLogin = '/auth/google';
  static const String authFacebookLogin = '/auth/facebook';
  static const String authRegistration = '/auth/register';
  static const String authRefreshToken = '/auth/refresh-token';
  static const String authRegistrationCompletion =
      '/profile/registration/completion';
  static const String authCurrentUser = '/profile/me';
}
