import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    @Default(User.defaultUserId) String userId,
    @Default(User.defaultEmail) String email,
    @Default(User.defaultUsername) String username,
    @Default(User.defaultGoogleId) String googleId,
    @Default(User.defaultFacebookId) String facebookId,
    @Default(User.defaultPhoneNumber) String phoneNumber,
    @Default(User.defaultMedia) Media media,
  }) = _User;

  static const defaultUserId = '';
  static const defaultEmail = '';
  static const defaultUsername = '';
  static const defaultGoogleId = '';
  static const defaultFacebookId = '';
  static const defaultPhoneNumber = '';
  static const defaultMedia = Media.empty;

  static const User empty = User();
}
