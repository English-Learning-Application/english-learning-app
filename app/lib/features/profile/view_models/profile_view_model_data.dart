part of 'profile.dart';

@freezed
class ProfileViewModelData extends BaseViewModelData
    with _$ProfileViewModelData {
  const factory ProfileViewModelData({
    @Default(false) bool showOldPassword,
    @Default(false) bool showNewPassword,
    @Default(false) bool showConfirmPassword,
  }) = _ProfileViewModelData;
}
