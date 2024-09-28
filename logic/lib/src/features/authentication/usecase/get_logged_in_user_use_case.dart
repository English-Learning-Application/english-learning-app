import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_logged_in_user_use_case.freezed.dart';

@Injectable()
class GetLoggedInUserUseCase
    extends BaseFutureUseCase<GetLoggedInUserInput, GetLoggedInUserOutput> {
  final AuthenticationRepository _authenticationRepository;

  const GetLoggedInUserUseCase(this._authenticationRepository);

  @override
  Future<GetLoggedInUserOutput> buildUseCase(GetLoggedInUserInput input) async {
    await _authenticationRepository.getLoggedInUser();
    return const GetLoggedInUserOutput();
  }
}

@freezed
class GetLoggedInUserInput extends BaseInput with _$GetLoggedInUserInput {
  const factory GetLoggedInUserInput() = _GetLoggedInUserInput;
}

@freezed
class GetLoggedInUserOutput extends BaseOutput with _$GetLoggedInUserOutput {
  const GetLoggedInUserOutput._();
  const factory GetLoggedInUserOutput() = _GetLoggedInUserOutput;
}
