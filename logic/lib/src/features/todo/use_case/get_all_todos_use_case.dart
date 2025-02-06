import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_all_todos_use_case.freezed.dart';

@Injectable()
class GetAllTodosUseCase
    extends BaseFutureUseCase<GetAllTodosInput, GetAllTodosOutput> {
  final TodoRepository _todoRepository;

  const GetAllTodosUseCase(
    this._todoRepository,
  );

  @override
  Future<GetAllTodosOutput> buildUseCase(GetAllTodosInput input) async {
    final todos = await _todoRepository.getAllTodos();

    return GetAllTodosOutput(
      todos: todos,
    );
  }
}

@freezed
class GetAllTodosInput extends BaseInput with _$GetAllTodosInput {
  const factory GetAllTodosInput() = _GetAllTodosInput;
}

@freezed
class GetAllTodosOutput extends BaseOutput with _$GetAllTodosOutput {
  const factory GetAllTodosOutput({
    required List<UserTodo> todos,
  }) = _GetAllTodosOutput;
}
