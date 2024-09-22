import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../logic.dart';

part 'logout_use_case.freezed.dart';

@Injectable()
class LogoutUseCase extends BaseFutureUseCase<LogoutInput, LogoutOutput> {
  final AuthenticationRepository _authenticationRepository;
  final AppRepository _appRepository;
  final AppNavigator _appNavigator;

  const LogoutUseCase(
    this._authenticationRepository,
    this._appRepository,
    this._appNavigator,
  );

  @override
  Future<LogoutOutput> buildUseCase(LogoutInput input) async {
    if (_appRepository.isLoggedIn) {
      await _authenticationRepository.logout();
    }
    await _appNavigator.replaceAll(
      [
        const AppRouteInfo.login(),
      ],
    );

    return const LogoutOutput();
  }
}

@freezed
class LogoutInput extends BaseInput with _$LogoutInput {
  const factory LogoutInput() = _LogoutInput;
}

@freezed
class LogoutOutput extends BaseOutput with _$LogoutOutput {
  const LogoutOutput._();

  const factory LogoutOutput() = _LogoutOutput;
}
