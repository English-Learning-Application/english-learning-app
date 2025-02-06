import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  final TodoApiService _todoApiService;
  final ApiUserTodoDataMapper _apiUserTodoDataMapper;

  const TodoRepositoryImpl(
    this._todoApiService,
    this._apiUserTodoDataMapper,
  );

  @override
  Future<UserTodo> createTodo({
    required String title,
    required String description,
    required TodoType type,
    required TodoPriority priority,
  }) async {
    final resp = await _todoApiService.createTodo(
      title: title,
      description: description,
      type: type.serverValue,
      priority: priority.serverValue,
    );

    return _apiUserTodoDataMapper.mapToEntity(resp?.data);
  }

  @override
  Future<void> deleteTodoById(String id) async {
    await _todoApiService.deleteTodoById(id);
  }

  @override
  Future<List<UserTodo>> getAllTodos() async {
    final resp = await _todoApiService.getAllTodos();

    return _apiUserTodoDataMapper.mapToListEntities(resp?.results);
  }

  @override
  Future<UserTodo> updateTodo({
    required String id,
    required String title,
    required String description,
    required TodoType type,
    required TodoPriority priority,
    required bool completed,
  }) async {
    final resp = await _todoApiService.updateTodo(
      id: id,
      title: title,
      description: description,
      type: type.serverValue,
      priority: priority.serverValue,
      completed: completed,
    );

    return _apiUserTodoDataMapper.mapToEntity(resp?.data);
  }
}
