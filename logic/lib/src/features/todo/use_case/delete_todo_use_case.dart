import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'delete_todo_use_case.freezed.dart';

@Injectable()
class DeleteTodoUseCase
    extends BaseFutureUseCase<DeleteTodoInput, DeleteTodoOutput> {
  final TodoRepository _todoRepository;

  const DeleteTodoUseCase(
    this._todoRepository,
  );

  @override
  Future<DeleteTodoOutput> buildUseCase(DeleteTodoInput input) async {
    await _todoRepository.deleteTodoById(input.todoId);
    return const DeleteTodoOutput();
  }
}

@freezed
class DeleteTodoInput extends BaseInput with _$DeleteTodoInput {
  const factory DeleteTodoInput({
    required String todoId,
  }) = _DeleteTodoInput;
}

@freezed
class DeleteTodoOutput extends BaseOutput with _$DeleteTodoOutput {
  const factory DeleteTodoOutput() = _DeleteTodoOutput;
}
