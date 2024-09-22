import 'package:services/services.dart';

import '../../../../logic.dart';

abstract class BaseLoadMoreUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Future<PagedList<Output>>> {
  final int initPage;
  final int initOffset;

  BaseLoadMoreUseCase({
    this.initPage = PagingConstants.initialPage,
    this.initOffset = 0,
  })  : _output = LoadMoreOutput(
          data: <Output>[],
          page: initPage,
          offset: initOffset,
        ),
        _oldOutput = LoadMoreOutput(
          data: <Output>[],
          page: initPage,
          offset: initOffset,
        );

  LoadMoreOutput<Output> _output;
  LoadMoreOutput<Output> _oldOutput;

  int get page => _output.page;

  int get offset => _output.offset;

  Future<LoadMoreOutput<Output>> execute(
    Input input,
    bool isInitialLoad,
  ) async {
    try {
      if (isInitialLoad) {
        _output = LoadMoreOutput(
          data: <Output>[],
          page: initPage,
          offset: initOffset,
        );
      }
      logD('LoadMoreUseCase input: $input, page: $page, offset: $offset');

      final pagedList = await buildUseCase(input);

      final newOutput = _oldOutput.copyWith(
        data: pagedList.data,
        otherData: pagedList.otherData,
        page: isInitialLoad
            ? initPage + (pagedList.data.isEmpty ? 0 : 1)
            : page + (pagedList.data.isEmpty ? 0 : 1),
        offset: isInitialLoad
            ? (initOffset + pagedList.data.length)
            : (_oldOutput.offset + pagedList.data.length),
        isLastPage: pagedList.isLastPage,
        isRefreshSuccess: isInitialLoad,
      );

      _output = newOutput;
      _oldOutput = newOutput;

      logD('LoadMoreUseCase output: $_output');

      return newOutput;
    } catch (e) {
      logE('LoadMoreUseCase error: $e');

      _output = _oldOutput;
      throw e is AppException ? e : UncaughtException(e);
    }
  }
}
