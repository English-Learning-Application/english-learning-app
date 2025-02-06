part of 'todo_details.dart';

@Injectable()
class TodoDetailsViewModel extends BaseViewModel<TodoDetailsViewModelData> {
  final CreateTodoUseCase _createTodoUseCase;
  final UpdateTodoUseCase _updateTodoUseCase;
  TodoDetailsViewModel(
    this._createTodoUseCase,
    this._updateTodoUseCase,
  ) : super(const TodoDetailsViewModelData());

  void init({
    UserTodo? todo,
  }) {
    if (todo != null) {
      updateData(
        viewModelData.copyWith(
          id: todo.id,
          title: todo.title,
          description: todo.description,
          type: todo.type,
          priority: todo.priority,
          isCompleted: todo.completed,
        ),
      );
    }
  }

  void updateTitle(String title) {
    updateData(
      viewModelData.copyWith(
        title: title,
      ),
    );
  }

  void updateDescription(String description) {
    updateData(
      viewModelData.copyWith(
        description: description,
      ),
    );
  }

  void updateType(TodoType type) {
    updateData(
      viewModelData.copyWith(
        type: type,
      ),
    );
  }

  void updatePriority(TodoPriority priority) {
    updateData(
      viewModelData.copyWith(
        priority: priority,
      ),
    );
  }

  void updateIsCompleted(bool isCompleted) {
    updateData(
      viewModelData.copyWith(
        isCompleted: isCompleted,
      ),
    );
  }

  void createTodo() async {
    await runViewModelCatching(
      action: () async {
        final resp = await _createTodoUseCase.execute(
          CreateTodoInput(
            title: viewModelData.title,
            description: viewModelData.description,
            type: viewModelData.type,
            priority: viewModelData.priority,
          ),
        );

        await navigator.pop(
          result: resp.todo,
          useRootNavigator: false,
        );
      },
    );
  }

  void updateTodo() async {
    await runViewModelCatching(
      action: () async {
        final resp = await _updateTodoUseCase.execute(
          UpdateTodoInput(
            id: viewModelData.id,
            title: viewModelData.title,
            description: viewModelData.description,
            type: viewModelData.type,
            priority: viewModelData.priority,
            completed: viewModelData.isCompleted,
          ),
        );

        await navigator.pop(
          result: resp.todo,
          useRootNavigator: false,
        );
      },
    );
  }
}
