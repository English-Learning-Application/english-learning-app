// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(errorCode) => "Lỗi không xác định (${errorCode})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badCertificateException":
            MessageLookupByLibrary.simpleMessage("Lỗi bảo mật chứng chỉ"),
        "canNotConnectToHost": MessageLookupByLibrary.simpleMessage(
            "Không thể kết nối đến máy chủ"),
        "cancel": MessageLookupByLibrary.simpleMessage("Huỷ"),
        "cancellationException":
            MessageLookupByLibrary.simpleMessage("Lỗi hủy"),
        "error1": MessageLookupByLibrary.simpleMessage("Lỗi không xác định"),
        "invalidDateTime":
            MessageLookupByLibrary.simpleMessage("Định dạng ngày giờ sai"),
        "invalidUserName":
            MessageLookupByLibrary.simpleMessage("Định dạng username sai"),
        "login": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "noInternetException":
            MessageLookupByLibrary.simpleMessage("Không có mạng"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "parseException": MessageLookupByLibrary.simpleMessage("Lỗi định dạng"),
        "pressAgainToExit":
            MessageLookupByLibrary.simpleMessage("Bấm lại để thoát"),
        "retry": MessageLookupByLibrary.simpleMessage("Thử lại"),
        "timeoutException":
            MessageLookupByLibrary.simpleMessage("Quá thời gian kết nối"),
        "tokenExpired": MessageLookupByLibrary.simpleMessage("Token hết hạn"),
        "unknownException": m0
      };
}
