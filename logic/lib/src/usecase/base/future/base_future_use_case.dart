import 'package:services/services.dart';

import '../../../../logic.dart';

abstract class BaseFutureUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    try {
      logD('FutureUseCase Input: $input');
      final output = await buildUseCase(input);

      logD('FutureUseCase Output: $output');
      return output;
    } catch (e) {
      logE('FutureUseCase Error: $e}');
      throw e is AppException ? e : UncaughtException(e);
    }
  }
}
