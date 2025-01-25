import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../logic.dart';

part 'check_permission_use_case.freezed.dart';

@Injectable()
class CheckPermissionUseCase
    extends BaseFutureUseCase<CheckPermissionInput, CheckPermissionOutput> {
  const CheckPermissionUseCase();

  @override
  Future<CheckPermissionOutput> buildUseCase(CheckPermissionInput input) async {
    const grantedOutput = CheckPermissionOutput(isGranted: true);
    const rejectedOutput = CheckPermissionOutput(isGranted: false);

    final status = await input.permission.status;
    if (status.isGranted || status.isLimited) {
      return grantedOutput;
    } else if (status.isPermanentlyDenied) {
      return rejectedOutput.copyWith(isPermanentlyDenied: true);
    }

    final result = await input.permission.request();

    if (result.isGranted || result.isLimited) {
      return grantedOutput;
    } else {
      return rejectedOutput;
    }
  }
}

@freezed
class CheckPermissionInput extends BaseInput with _$CheckPermissionInput {
  const factory CheckPermissionInput({
    required Permission permission,
  }) = _CheckPermissionInput;
}

@freezed
class CheckPermissionOutput extends BaseOutput with _$CheckPermissionOutput {
  const factory CheckPermissionOutput({
    required bool isGranted,
    @Default(false) bool isPermanentlyDenied,
  }) = _CheckPermissionOutput;
}
