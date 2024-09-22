import 'package:meta/meta.dart';
import 'package:services/services.dart';

import '../../../logic.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
