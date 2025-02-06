part of 'todo.dart';

@freezed
class TodoViewModelData extends BaseViewModelData with _$TodoViewModelData {
  const factory TodoViewModelData({
    TodoType? type,
    @Default(<UserTodo>[]) List<UserTodo> originalTodos,
    @Default(<UserTodo>[]) List<UserTodo> todos,
  }) = _TodoViewModelData;
}
