// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:services/services.dart';

class CommonPagingController<T> implements Disposable {
  CommonPagingController({
    this.invisibleItemsThreshold =
        PagingConstants.defaultInvisibleItemsThreshold,
    this.firstPageKey = PagingConstants.initialPage,
  }) : pagingController = PagingController<int, T>(
          firstPageKey: firstPageKey,
          invisibleItemsThreshold: invisibleItemsThreshold,
        );

  final PagingController<int, T> pagingController;

  final int? invisibleItemsThreshold;
  final int firstPageKey;

  // Call this method to set the error in the paging controller
  set error(AppException? appException) {
    pagingController.error = appException;
  }

  // Call when initState to listen to trigger load more
  void listen({
    required VoidCallback onLoadMore,
  }) {
    pagingController.addPageRequestListener((pageKey) {
      if (pageKey > PagingConstants.initialPage) {
        onLoadMore();
      }
    });
  }

  void appendLoadMoreOutput(LoadMoreOutput<T> loadMoreOutput) {
    if (loadMoreOutput.isRefreshSuccess) {
      pagingController.refresh();
    }
    if (loadMoreOutput.isLastPage) {
      pagingController.appendLastPage(loadMoreOutput.data);
    } else {
      pagingController.appendPage(
        loadMoreOutput.data,
        (pagingController.nextPageKey ?? (PagingConstants.initialPage - 1)) + 1,
      );
    }
  }

  void insertItemAt(int index, T item) {
    pagingController.itemList?.insert(index, item);
    pagingController.notifyListeners();
  }

  void insertAllItemsAt(int index, List<T> items) {
    pagingController.itemList?.insertAll(index, items);
    pagingController.notifyListeners();
  }

  void updateItemAt(int index, T item) {
    pagingController.itemList?[index] = item;
    pagingController.notifyListeners();
  }

  void removeItemAt(int index) {
    pagingController.itemList?.removeAt(index);
    pagingController.notifyListeners();
  }

  void removeRange(int start, int end) {
    pagingController.itemList?.removeRange(start, end);
    pagingController.notifyListeners();
  }

  void clear() {
    pagingController.itemList?.clear();
    pagingController.notifyListeners();
  }

  @override
  void dispose() {
    pagingController.dispose();
  }
}
