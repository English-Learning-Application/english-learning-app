import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'update_todo_use_case.freezed.dart';

@Injectable()
class UpdateTodoUseCase
    extends BaseFutureUseCase<UpdateTodoInput, UpdateTodoOutput> {
  final TodoRepository _todoRepository;

  const UpdateTodoUseCase(
    this._todoRepository,
  );

  @override
  Future<UpdateTodoOutput> buildUseCase(UpdateTodoInput input) async {
    final resp = await _todoRepository.updateTodo(
      id: input.id,
      title: input.title,
      description: input.description,
      type: input.type,
      priority: input.priority,
      completed: input.completed ?? false,
    );

    return UpdateTodoOutput(
      todo: resp,
    );
  }
}

@freezed
class UpdateTodoInput extends BaseInput with _$UpdateTodoInput {
  const factory UpdateTodoInput({
    required String id,
    required String title,
    required String description,
    required TodoType type,
    required TodoPriority priority,
    bool? completed,
  }) = _UpdateTodoInput;
}

@freezed
class UpdateTodoOutput extends BaseOutput with _$UpdateTodoOutput {
  const factory UpdateTodoOutput({
    required UserTodo todo,
  }) = _UpdateTodoOutput;
}
