import 'package:services/services.dart';

import '../../../../logic.dart';

abstract class BaseStreamUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Stream<Output>> {
  const BaseStreamUseCase();

  Stream<Output> execute(Input input) {
    try {
      logD('StreamUseCase Input: $input');
      return buildUseCase(input).log(runtimeType.toString());
    } catch (e) {
      logE('StreamUseCase Error: $e');
      throw e is AppException ? e : UncaughtException(e);
    }
  }
}
