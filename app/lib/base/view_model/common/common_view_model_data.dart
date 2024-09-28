part of 'common.dart';

@freezed
class CommonViewModelData extends BaseViewModelData with _$CommonViewModelData {
  const factory CommonViewModelData({
    AppExceptionWrapper? appExceptionWrapper,
    @Default(0) int loadingCount,
    @Default(false) bool isLoading,
    @Default(true) bool isConnected,
  }) = _CommonViewModelData;
}
