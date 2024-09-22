import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../logic.dart';

part 'get_users_use_case.freezed.dart';

@Injectable()
class GetUsersUseCase extends BaseLoadMoreUseCase<GetUsersInput, RandomUser> {
  final AppRepository _appRepository;

  GetUsersUseCase(this._appRepository);

  @override
  Future<PagedList<RandomUser>> buildUseCase(GetUsersInput input) async {
    final resp = await _appRepository.getUsers(
      page: page,
      limit: PagingConstants.itemsPerPage,
    );
    return resp;
  }
}

@freezed
class GetUsersInput extends BaseInput with _$GetUsersInput {
  const factory GetUsersInput() = _GetUsersInput;
}
