import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'login_user_use_case.freezed.dart';

@Injectable()
class LoginUserUseCase
    extends BaseFutureUseCase<LoginUserInput, LoginUserOutput> {
  final AuthenticationRepository _authenticationRepository;
  final AppNavigator _appNavigator;

  const LoginUserUseCase(
    this._authenticationRepository,
    this._appNavigator,
  );

  @override
  Future<LoginUserOutput> buildUseCase(LoginUserInput input) async {
    await _authenticationRepository.loginUser(
      email: input.email,
      password: input.password,
    );

    _appNavigator.replaceAll(
      [
        const AppRouteInfo.home(),
      ],
    );

    return const LoginUserOutput();
  }
}

@freezed
class LoginUserInput extends BaseInput with _$LoginUserInput {
  const factory LoginUserInput({
    required String email,
    required String password,
  }) = _LoginUserInput;
}

@freezed
class LoginUserOutput extends BaseOutput with _$LoginUserOutput {
  const LoginUserOutput._();

  const factory LoginUserOutput() = _LoginUserOutput;
}
