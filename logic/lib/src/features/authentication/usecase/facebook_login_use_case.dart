import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'facebook_login_use_case.freezed.dart';

@Injectable()
class FacebookLoginUseCase
    extends BaseFutureUseCase<FacebookLoginInput, FacebookLoginOutput> {
  final AuthenticationRepository _authenticationRepository;
  final AppNavigator _appNavigator;

  const FacebookLoginUseCase(
    this._authenticationRepository,
    this._appNavigator,
  );

  @override
  Future<FacebookLoginOutput> buildUseCase(FacebookLoginInput input) async {
    await _authenticationRepository.facebookLogin(
      input.accessToken,
    );

    return const FacebookLoginOutput();
  }
}

@freezed
class FacebookLoginInput extends BaseInput with _$FacebookLoginInput {
  const factory FacebookLoginInput({
    required String accessToken,
  }) = _FacebookLoginInput;
}

@freezed
class FacebookLoginOutput extends BaseOutput with _$FacebookLoginOutput {
  const FacebookLoginOutput._();

  const factory FacebookLoginOutput() = _FacebookLoginOutput;
}
