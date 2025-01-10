import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'google_login_use_case.freezed.dart';

@Injectable()
class GoogleLoginUseCase
    extends BaseFutureUseCase<GoogleLoginInput, GoogleLoginOutput> {
  final AuthenticationRepository _authenticationRepository;

  const GoogleLoginUseCase(
    this._authenticationRepository,
  );

  @override
  Future<GoogleLoginOutput> buildUseCase(GoogleLoginInput input) async {
    await _authenticationRepository.googleLogin(
      input.idToken,
    );

    return const GoogleLoginOutput();
  }
}

@freezed
class GoogleLoginInput extends BaseInput with _$GoogleLoginInput {
  const factory GoogleLoginInput({
    required String idToken,
  }) = _GoogleLoginInput;
}

@freezed
class GoogleLoginOutput extends BaseOutput with _$GoogleLoginOutput {
  const GoogleLoginOutput._();

  const factory GoogleLoginOutput() = _GoogleLoginOutput;
}
