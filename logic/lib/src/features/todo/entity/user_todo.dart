import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic/logic.dart';

part 'user_todo.freezed.dart';

@freezed
class UserTodo with _$UserTodo {
  const UserTodo._();
  const factory UserTodo({
    @Default(UserTodo.defaultUserTodoId) String id,
    @Default(UserTodo.defaultTodoTitle) String title,
    @Default(UserTodo.defaultTodoDescription) String description,
    @Default(UserTodo.defaultCompleted) bool completed,
    @Default(UserTodo.defaultTodoType) TodoType type,
    @Default(UserTodo.defaultTodoPriority) TodoPriority priority,
    @Default(UserTodo.defaultCreatedAt) DateTime? createdAt,
    @Default(UserTodo.defaultUpdatedAt) DateTime? updatedAt,
  }) = _UserTodo;

  static const defaultUserTodoId = '';
  static const defaultTodoTitle = '';
  static const defaultTodoDescription = '';
  static const defaultCompleted = false;
  static const TodoType defaultTodoType = TodoType.general;
  static const TodoPriority defaultTodoPriority = TodoPriority.low;
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
