part of 'photo_bottom_sheet.dart';

@Injectable()
class PhotoBottomSheetViewModel
    extends BaseViewModel<PhotoBottomSheetViewModelData> {
  final GetPhoneImagesUseCase _getPhoneImagesUseCase;
  final UpdateUserAvatarUseCase _updateUserAvatarUseCase;
  PhotoBottomSheetViewModel(
    this._getPhoneImagesUseCase,
    this._updateUserAvatarUseCase,
  ) : super(PhotoBottomSheetViewModelData());

  Future<void> onInit() async {
    await _getImages(isInitialLoad: true);
  }

  Future<void> loadMore() async {
    await _getImages(isInitialLoad: false);
  }

  void onSelectedImage(File image) {
    final currentSelectedImages = [...viewModelData.selectedImages];

    if (!viewModelData.allowSelectMultiple) {
      currentSelectedImages.clear();
    }

    if (currentSelectedImages.contains(image)) {
      currentSelectedImages.remove(image);
    } else {
      currentSelectedImages.add(image);
    }

    updateData(
      viewModelData.copyWith(
        selectedImages: currentSelectedImages,
      ),
    );
  }

  Future<void> updateUserAvatar() async {
    await runViewModelCatching(
      action: () async {
        final selectedImage = viewModelData.selectedImages.first;
        await _updateUserAvatarUseCase.execute(
          UpdateUserAvatarInput(filePath: selectedImage.path),
        );
        await appViewModel.appRefreshUser(false);
        navigator.pop();
      },
    );
  }

  Future<void> _getImages({
    required bool isInitialLoad,
  }) async {
    return runViewModelCatching(
      action: () async {
        final output = await _getPhoneImagesUseCase.execute(
            const GetPhoneImagesInput(), isInitialLoad);

        updateData(
          viewModelData.copyWith(
            images: output,
          ),
        );
      },
      handleLoading: false,
      maxRetries: 3,
    );
  }
}
