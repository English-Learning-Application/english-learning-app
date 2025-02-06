import 'package:logic/logic.dart';

abstract class TodoRepository {
  Future<List<UserTodo>> getAllTodos();

  Future<void> deleteTodoById(String id);

  Future<UserTodo> createTodo({
    required String title,
    required String description,
    required TodoType type,
    required TodoPriority priority,
  });

  Future<UserTodo> updateTodo({
    required String id,
    required String title,
    required String description,
    required TodoType type,
    required TodoPriority priority,
    required bool completed,
  });
}
