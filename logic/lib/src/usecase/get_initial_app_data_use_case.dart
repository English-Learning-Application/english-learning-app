import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../logic.dart';

part 'get_initial_app_data_use_case.freezed.dart';

@Injectable()
class GetInitialAppDataUseCase
    extends BaseFutureUseCase<GetInitialAppDataInput, GetInitialAppDataOutput> {
  final AppRepository _appRepository;

  const GetInitialAppDataUseCase(this._appRepository);

  @override
  Future<GetInitialAppDataOutput> buildUseCase(GetInitialAppDataInput input)  async {
    final appTheme = _appRepository.appTheme;
    final isLoggedIn = _appRepository.isLoggedIn;
    final languageCode = _appRepository.languageCode;
    final isFirstLaunch = await _appRepository.isFirstLaunchApp();
    return GetInitialAppDataOutput(
      appTheme: appTheme,
      isLoggedIn: isLoggedIn,
      languageCode: languageCode,
      initialAppRoute:
          isLoggedIn ? InitialAppRoute.home : InitialAppRoute.login,
      isFirstLaunch: isFirstLaunch,
    );
  }
}

@freezed
class GetInitialAppDataInput extends BaseInput with _$GetInitialAppDataInput {
  const factory GetInitialAppDataInput() = _GetInitialAppDataInput;
}

@freezed
class GetInitialAppDataOutput extends BaseOutput
    with _$GetInitialAppDataOutput {
  const GetInitialAppDataOutput._();
  const factory GetInitialAppDataOutput({
    @Default(AppThemeType.system) AppThemeType appTheme,
    @Default(false) bool isLoggedIn,
    @Default(LanguageCode.defaultValue) LanguageCode languageCode,
    @Default(InitialAppRoute.login) InitialAppRoute initialAppRoute,
    @Default(false) bool isFirstLaunch,
  }) = _GetInitialAppDataOutput;
}
