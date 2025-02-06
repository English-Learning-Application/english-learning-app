import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'create_todo_use_case.freezed.dart';

@Injectable()
class CreateTodoUseCase
    extends BaseFutureUseCase<CreateTodoInput, CreateTodoOutput> {
  final TodoRepository _todoRepository;

  const CreateTodoUseCase(
    this._todoRepository,
  );

  @override
  Future<CreateTodoOutput> buildUseCase(CreateTodoInput input) async {
    final resp = await _todoRepository.createTodo(
      title: input.title,
      description: input.description,
      type: input.type,
      priority: input.priority,
    );

    return CreateTodoOutput(
      todo: resp,
    );
  }
}

@freezed
class CreateTodoInput extends BaseInput with _$CreateTodoInput {
  const factory CreateTodoInput({
    required String title,
    required String description,
    required TodoType type,
    required TodoPriority priority,
  }) = _CreateTodoInput;
}

@freezed
class CreateTodoOutput extends BaseOutput with _$CreateTodoOutput {
  const factory CreateTodoOutput({
    required UserTodo todo,
  }) = _CreateTodoOutput;
}
