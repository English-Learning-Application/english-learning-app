// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(errorCode) => "Unidentified error (${errorCode})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badCertificateException":
            MessageLookupByLibrary.simpleMessage("Bad Certificate"),
        "canNotConnectToHost":
            MessageLookupByLibrary.simpleMessage("Can not connect to host"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancellationException":
            MessageLookupByLibrary.simpleMessage("Cancellation"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "emailHint": MessageLookupByLibrary.simpleMessage("Enter your email"),
        "error1": MessageLookupByLibrary.simpleMessage("Unidentified error"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "invalidDateTime":
            MessageLookupByLibrary.simpleMessage("Wrong date time format"),
        "invalidUserName":
            MessageLookupByLibrary.simpleMessage("Wrong username format"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginDescription": MessageLookupByLibrary.simpleMessage(
            "Login to access all of our services"),
        "loginSubTitle": MessageLookupByLibrary.simpleMessage(
            "Learnings, resources, and support to help you every step of the way on your journey to success."),
        "loginTitle": MessageLookupByLibrary.simpleMessage(
            "Everything you need is in one place"),
        "noInternetException":
            MessageLookupByLibrary.simpleMessage("No Internet"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "or": MessageLookupByLibrary.simpleMessage("Or"),
        "parseException":
            MessageLookupByLibrary.simpleMessage("Parse Exception"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordHint":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "pressAgainToExit":
            MessageLookupByLibrary.simpleMessage("Press again to exit"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registerDescription": MessageLookupByLibrary.simpleMessage(
            "Register to access all of our services"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "timeoutException": MessageLookupByLibrary.simpleMessage("Timeout"),
        "tokenExpired": MessageLookupByLibrary.simpleMessage("Token expired"),
        "unknownException": m0,
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "usernameHint":
            MessageLookupByLibrary.simpleMessage("Enter your username")
      };
}
