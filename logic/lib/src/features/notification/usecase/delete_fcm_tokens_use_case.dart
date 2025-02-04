import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'delete_fcm_tokens_use_case.freezed.dart';

@Injectable()
class DeleteFcmTokensUseCase
    extends BaseFutureUseCase<DeleteFcmTokensInput, DeleteFcmTokensOutput> {
  final NotificationRepository _notificationRepository;

  const DeleteFcmTokensUseCase(this._notificationRepository);

  @override
  Future<DeleteFcmTokensOutput> buildUseCase(DeleteFcmTokensInput input) async {
    await _notificationRepository.deleteFcmTokens();
    return const DeleteFcmTokensOutput();
  }
}

@freezed
class DeleteFcmTokensInput extends BaseInput with _$DeleteFcmTokensInput {
  const factory DeleteFcmTokensInput() = _DeleteFcmTokensInput;
}

@freezed
class DeleteFcmTokensOutput extends BaseOutput with _$DeleteFcmTokensOutput {
  const factory DeleteFcmTokensOutput() = _DeleteFcmTokensOutput;
}
