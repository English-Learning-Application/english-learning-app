import 'dart:io';

import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class PhotoBottomSheetView extends StatefulWidget {
  const PhotoBottomSheetView({
    super.key,
    this.allowSelectMultiple = false,
  });

  final bool allowSelectMultiple;

  @override
  State<PhotoBottomSheetView> createState() => _PhotoBottomSheetViewState();
}

class _PhotoBottomSheetViewState
    extends BasePageState<PhotoBottomSheetView, PhotoBottomSheetViewModel> {
  late final _pagingController = CommonPagingController<File>()
    ..disposeBy(disposeBag);
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      padding: EdgeInsets.zero,
      body: Selector<PhotoBottomSheetViewModel, PhotoBottomSheetViewModelData>(
        builder: (_, viewModelData, __) {
          final hasImagesSelected = viewModelData.selectedImages.isNotEmpty;
          if (viewModelData.images.data.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                child: CommonPagedGridView<File>(
                  pagingController: _pagingController,
                  itemBuilder: (_, item, index) {
                    return GestureDetector(
                      onTap: () {
                        viewModel.onSelectedImage(item);
                      },
                      child: Stack(
                        children: [
                          ImagesProvider.fileImage(
                            imagePath: item.path,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: Dimens.d120.responsive(),
                          ),
                          if (viewModelData.selectedImages.contains(item))
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FoundationColors.neutral100
                                      .withValues(alpha: 0.8),
                                  borderRadius: BorderRadius.circular(
                                    Dimens.d8.responsive(),
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: Dimens.d8.responsive(),
                    mainAxisSpacing: Dimens.d8.responsive(),
                  ),
                ),
              ),
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
              StandardButton(
                buttonType: hasImagesSelected
                    ? ButtonType.primary
                    : ButtonType.disabled,
                text: S.current.updateProfilePicture,
                innerGap: 0,
                leadingIconSize: 0,
                trailingIconSize: 0,
                buttonSize: ButtonSize.small,
                onPressed: () {
                  if (hasImagesSelected) {
                    viewModel.updateUserAvatar();
                  }
                },
              ),
            ],
          );
        },
        shouldRebuild: (previous, next) {
          final isDifferent = previous.images != next.images;

          if (isDifferent) {
            _pagingController.appendLoadMoreOutput(next.images);
          }

          final isSelectDifferent =
              previous.selectedImages != next.selectedImages;

          return isDifferent || isSelectDifferent;
        },
        selector: (_, viewModel) => viewModel.viewModelData,
      ),
    );
  }

  @override
  void initViewModels() async {
    await viewModel.onInit();
    _pagingController.listen(
      onLoadMore: () async {
        await viewModel.loadMore();
      },
    );
  }

  @override
  String get screenName => 'PhotoBottomSheetView';
}
