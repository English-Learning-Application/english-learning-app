import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileApiDataSource _profileApiDataSource;
  final AppPreferences _appPreferences;
  final ApiUserDataMapper _apiUserDataMapper;

  const ProfileRepositoryImpl(
    this._profileApiDataSource,
    this._appPreferences,
    this._apiUserDataMapper,
  );

  @override
  Future<void> sendEmailVerification() async {
    await _profileApiDataSource.sendEmailVerification();
  }

  @override
  Future<void> verifyEmail(String otp) async {
    await _profileApiDataSource.verifyEmail(otp);
  }

  @override
  Future<void> sendPhoneVerification(String phoneNumber) async {
    await _profileApiDataSource.sendPhoneVerification(phoneNumber);
  }

  @override
  Future<void> verifyPhone(String otp) async {
    await _profileApiDataSource.verifyPhone(otp);
  }

  @override
  Future<void> updateUserAvatar(String fileAssetPath) async {
    final resp = await _profileApiDataSource.updateUserAvatar(fileAssetPath);
    if (resp?.data != null) {
      await _appPreferences.saveCurrentUser(resp!.data!);
    }
  }

  @override
  Future<void> updateUserProfile(
      {required String username,
      required LearningLanguage learningLanguage,
      required LearningLanguage nativeLanguage,
      required List<LearningType> learningModes}) async {
    final resp = await _profileApiDataSource.updateUserProfile(
      username: username,
      learningLanguage: learningLanguage.serverValue,
      nativeLanguage: nativeLanguage.serverValue,
      learningModes: learningModes.map((e) => e.serverValue).toList(),
    );

    if (resp?.data != null) {
      await _appPreferences.saveCurrentUser(resp!.data!);
    }
  }

  @override
  Future<bool> updatePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    final resp = await _profileApiDataSource.updateUserPassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
    return resp?.data ?? false;
  }
}
