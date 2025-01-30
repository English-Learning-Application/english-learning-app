part of 'photo_bottom_sheet.dart';

@freezed
class PhotoBottomSheetViewModelData extends BaseViewModelData
    with _$PhotoBottomSheetViewModelData {
  factory PhotoBottomSheetViewModelData({
    @Default(LoadMoreOutput<File>(data: <File>[])) LoadMoreOutput<File> images,
    @Default([]) List<File> selectedImages,
    @Default(false) bool allowSelectMultiple,
  }) = _PhotoBottomSheetViewModelData;
}
