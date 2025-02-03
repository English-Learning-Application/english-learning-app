import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_users_data_use_case.freezed.dart';

@Injectable()
class GetUsersDataUseCase
    extends BaseFutureUseCase<GetUsersDataInput, GetUsersDataOutput> {
  final AppRepository _appRepository;

  const GetUsersDataUseCase(this._appRepository);

  @override
  Future<GetUsersDataOutput> buildUseCase(GetUsersDataInput input) async {
    final resp = await _appRepository.getUsersData(ids: input.ids);

    return GetUsersDataOutput(users: resp);
  }
}

@freezed
class GetUsersDataInput extends BaseInput with _$GetUsersDataInput {
  const factory GetUsersDataInput({
    required List<String> ids,
  }) = _GetUsersDataInput;
}

@freezed
class GetUsersDataOutput extends BaseOutput with _$GetUsersDataOutput {
  const factory GetUsersDataOutput({
    required List<User> users,
  }) = _GetUsersDataOutput;
}
