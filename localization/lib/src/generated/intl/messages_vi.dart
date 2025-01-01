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
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Xác nhận mật khẩu"),
        "emailHint": MessageLookupByLibrary.simpleMessage("Nhập email của bạn"),
        "error1": MessageLookupByLibrary.simpleMessage("Lỗi không xác định"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Quên mật khẩu?"),
        "invalidConfirmationPassword": MessageLookupByLibrary.simpleMessage(
            "Mật khẩu xác nhận không khớp"),
        "invalidDateTime":
            MessageLookupByLibrary.simpleMessage("Định dạng ngày giờ sai"),
        "invalidUserName":
            MessageLookupByLibrary.simpleMessage("Định dạng username sai"),
        "login": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "loginDescription": MessageLookupByLibrary.simpleMessage(
            "Đăng nhập để truy cập tất cả các dịch vụ của chúng tôi"),
        "loginSubTitle": MessageLookupByLibrary.simpleMessage(
            "Kiến thức, tài nguyên và hỗ trợ giúp bạn mỗi bước trên hành trình thành công của mình."),
        "loginTitle": MessageLookupByLibrary.simpleMessage(
            "Tất cả mọi thứ bạn cần đều có tại đây"),
        "noInternetException":
            MessageLookupByLibrary.simpleMessage("Không có mạng"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "or": MessageLookupByLibrary.simpleMessage("Hoặc"),
        "parseException": MessageLookupByLibrary.simpleMessage("Lỗi định dạng"),
        "password": MessageLookupByLibrary.simpleMessage("Mật khẩu"),
        "passwordHint":
            MessageLookupByLibrary.simpleMessage("Nhập mật khẩu của bạn"),
        "pressAgainToExit":
            MessageLookupByLibrary.simpleMessage("Bấm lại để thoát"),
        "register": MessageLookupByLibrary.simpleMessage("Đăng ký"),
        "registerDescription": MessageLookupByLibrary.simpleMessage(
            "Đăng ký để truy cập tất cả các dịch vụ của chúng tôi"),
        "retry": MessageLookupByLibrary.simpleMessage("Thử lại"),
        "timeoutException":
            MessageLookupByLibrary.simpleMessage("Quá thời gian kết nối"),
        "tokenExpired": MessageLookupByLibrary.simpleMessage("Token hết hạn"),
        "unknownException": m0,
        "username": MessageLookupByLibrary.simpleMessage("Tên người dùng"),
        "usernameHint":
            MessageLookupByLibrary.simpleMessage("Nhập tên người dùng")
      };
}
