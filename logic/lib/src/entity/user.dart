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
    @Default(User.defaultUserProfile) UserProfile userProfile,
    @Default(User.defaultRegistrationStatus)
    RegistrationStatus registrationStatus,
  }) = _User;

  static const defaultUserId = '';
  static const defaultEmail = '';
  static const defaultUsername = '';
  static const defaultGoogleId = '';
  static const defaultFacebookId = '';
  static const defaultPhoneNumber = '';
  static const defaultMedia = Media.empty;
  static const defaultUserProfile = UserProfile.empty;
  static const defaultRegistrationStatus = RegistrationStatus.notConfirmed;

  static const User empty = User();

  bool get isRegistered => registrationStatus == RegistrationStatus.confirmed;
}

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();
  const factory UserProfile({
    @Default(UserProfile.defaultUserProfileId) String userProfileId,
    @Default(UserProfile.defaultNativeLanguage) LearningLanguage nativeLanguage,
    @Default(UserProfile.defaultLearningLanguage)
    LearningLanguage learningLanguage,
    @Default(UserProfile.defaultLearningTypeOne) LearningType? learningTypeOne,
    @Default(UserProfile.defaultLearningTypeTwo) LearningType? learningTypeTwo,
    @Default(UserProfile.defaultLearningTypeThree)
    LearningType? learningTypeThree,
  }) = _UserProfile;

  static const defaultUserProfileId = '';
  static const defaultNativeLanguage = LearningLanguage.vietnamese;
  static const defaultLearningLanguage = LearningLanguage.english;
  static const defaultLearningTypeOne = null;
  static const defaultLearningTypeTwo = null;
  static const defaultLearningTypeThree = null;

  static const UserProfile empty = UserProfile();
}
