import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../logic.dart';

part 'get_initial_app_data_use_case.freezed.dart';

@Injectable()
class GetInitialAppDataUseCase
    extends BaseSyncUseCase<GetInitialAppDataInput, GetInitialAppDataOutput> {
  final AppRepository _appRepository;

  const GetInitialAppDataUseCase(this._appRepository);

  @override
  GetInitialAppDataOutput buildUseCase(GetInitialAppDataInput input) {
    final appTheme = _appRepository.appTheme;
    final isLoggedIn = _appRepository.isLoggedIn;
    final languageCode = _appRepository.languageCode;
    return GetInitialAppDataOutput(
      appTheme: appTheme,
      isLoggedIn: isLoggedIn,
      languageCode: languageCode,
      initialAppRoute:
          isLoggedIn ? InitialAppRoute.home : InitialAppRoute.login,
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
  }) = _GetInitialAppDataOutput;
}
