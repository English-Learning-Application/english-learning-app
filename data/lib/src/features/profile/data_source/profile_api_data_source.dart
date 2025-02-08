import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@LazySingleton()
class ProfileApiDataSource {
  final AuthAppServerApiClient _authAppServerApiClient;

  const ProfileApiDataSource(this._authAppServerApiClient);

  Future<void> sendEmailVerification() async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ProfileEndpoints.sendEmailVerification,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
    );
  }

  Future<void> verifyEmail(String otp) async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ProfileEndpoints.verifyEmail,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'otpCode': otp,
      },
    );
  }

  Future<void> sendPhoneVerification(String phoneNumber) async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ProfileEndpoints.sendPhoneVerification,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'phoneNumber': phoneNumber,
      },
    );
  }

  Future<void> verifyPhone(String otp) async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ProfileEndpoints.verifyPhone,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'otpCode': otp,
      },
    );
  }

  Future<DataResponse<ApiUserData>?> updateUserAvatar(
      String fileAssetPath) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(fileAssetPath),
      'mediaType': MediaType.image.serverValue,
    });
    return await _authAppServerApiClient.request(
      method: RestApiMethod.put,
      path: ProfileEndpoints.updateUserAvatar,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      decoder: (dynamic json) => ApiUserData.fromJson(json),
      body: formData,
    );
  }

  Future<DataResponse<ApiUserData>?> updateUserProfile({
    required String username,
    required String learningLanguage,
    required String nativeLanguage,
    required List<String> learningModes,
  }) async {
    final body = {
      'username': username,
      'learningLanguage': learningLanguage,
      'nativeLanguage': nativeLanguage,
      'learningTypes': learningModes,
    };
    return await _authAppServerApiClient.request(
      method: RestApiMethod.put,
      path: ProfileEndpoints.updateUserProfile,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      decoder: (dynamic json) => ApiUserData.fromJson(json),
      body: body,
    );
  }

  Future<DataResponse<bool>?> updateUserPassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    final body = {
      'oldPassword': oldPassword,
      'newPassword': newPassword,
    };
    return await _authAppServerApiClient.request(
      method: RestApiMethod.put,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: body,
      path: '/profile/update-password',
      decoder: (dynamic json) => json as bool,
    );
  }
}
