import 'package:services/services.dart';

import '../../../../logic.dart';

abstract class BaseSyncUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Output> {
  const BaseSyncUseCase();

  Output execute(Input input) {
    try {
      logD("SyncUseCase Input: $input");

      final output = buildUseCase(input);

      logD("SyncUseCase Output: $output");

      return output;
    } catch (e) {
      logE("SyncUseCase Error: $e");

      throw e is AppException ? e : UncaughtException(e);
    }
  }
}
