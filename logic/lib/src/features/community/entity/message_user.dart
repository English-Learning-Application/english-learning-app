import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:services/services.dart';

part 'message_user.freezed.dart';

@freezed
class MessageUser with _$MessageUser {
  const MessageUser._();
  const factory MessageUser({
    @Default(MessageUser.defaultUserId) String userId,
    @Default(MessageUser.defaultUsername) String username,
    @Default(MessageUser.defaultImageUrl) String imageUrl,
    @Default(MessageUser.defaultEmail) String email,
    @Default(MessageUser.defaultPhoneNumber) String phoneNumber,
    @Default(MessageUser.defaultExternalId) String externalId,
    @Default(MessageUser.defaultCreatedAt) DateTime? createdAt,
    @Default(MessageUser.defaultUpdatedAt) DateTime? updatedAt,
  }) = _MessageUser;

  static const defaultUserId = '';
  static const defaultUsername = '';
  static const defaultImageUrl = '';
  static const defaultEmail = '';
  static const defaultPhoneNumber = '';
  static const defaultExternalId = '';
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;

  String get avatarUrl => "${UrlConstants.appMediaBaseUrl}$imageUrl";
}
