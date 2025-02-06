part of 'todo.dart';

@Injectable()
class TodoViewModel extends BaseViewModel<TodoViewModelData> {
  final GetAllTodosUseCase _getAllTodosUseCase;
  final DeleteTodoUseCase _deleteTodoUseCase;
  final UpdateTodoUseCase _updateTodoUseCase;
  TodoViewModel(
    this._getAllTodosUseCase,
    this._deleteTodoUseCase,
    this._updateTodoUseCase,
  ) : super(const TodoViewModelData());

  void init() async {
    await runViewModelCatching(
      action: () async {
        final output = await _getAllTodosUseCase.buildUseCase(
          const GetAllTodosInput(),
        );

        updateData(
          viewModelData.copyWith(
            originalTodos: output.todos,
            todos: output.todos,
          ),
        );
      },
    );
  }

  void deleteTodoById(String id) async {
    await runViewModelCatching(
      action: () async {
        await _deleteTodoUseCase.execute(
          DeleteTodoInput(todoId: id),
        );

        final output = await _getAllTodosUseCase.buildUseCase(
          const GetAllTodosInput(),
        );

        if (viewModelData.type != null) {
          final todoList = [...output.todos].where(
            (element) {
              return element.type == viewModelData.type;
            },
          ).toList();

          updateData(
            viewModelData.copyWith(
              originalTodos: output.todos,
              todos: todoList,
            ),
          );
          return;
        }

        updateData(
          viewModelData.copyWith(
            todos: output.todos,
            originalTodos: output.todos,
          ),
        );
      },
    );
  }

  void selectTodoType(TodoType type) {
    if (type == viewModelData.type) {
      final todoList = [...viewModelData.originalTodos];

      updateData(
        viewModelData.copyWith(
          todos: todoList,
          type: null,
        ),
      );
      return;
    }
    final todoList = [...viewModelData.originalTodos].where(
      (element) {
        return element.type == type;
      },
    ).toList();

    updateData(
      viewModelData.copyWith(
        todos: todoList,
        type: type,
      ),
    );
  }

  void markTodoStatus({
    required UserTodo todo,
    required bool isCompleted,
  }) async {
    await runViewModelCatching(
      action: () async {
        final updatedTodo = todo.copyWith(completed: isCompleted);

        await _updateTodoUseCase.execute(
          UpdateTodoInput(
            id: updatedTodo.id,
            title: updatedTodo.title,
            description: updatedTodo.description,
            priority: updatedTodo.priority,
            type: updatedTodo.type,
            completed: updatedTodo.completed,
          ),
        );

        final output = await _getAllTodosUseCase.buildUseCase(
          const GetAllTodosInput(),
        );

        if (viewModelData.type != null) {
          final todoList = [...output.todos].where(
            (element) {
              return element.type == viewModelData.type;
            },
          ).toList();

          updateData(
            viewModelData.copyWith(
              originalTodos: output.todos,
              todos: todoList,
            ),
          );
          return;
        }

        updateData(
          viewModelData.copyWith(
            todos: output.todos,
            originalTodos: output.todos,
          ),
        );
      },
    );
  }
}
