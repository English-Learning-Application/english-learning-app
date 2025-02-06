import 'package:data/data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class TodoApiService {
  final AuthAppServerApiClient _authAppServerApiClient;

  const TodoApiService(this._authAppServerApiClient);

  Future<ListResponse<ApiUserTodoData>?> getAllTodos() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: '/todo/all',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) => ApiUserTodoData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiUserTodoData>?> createTodo({
    required String title,
    required String description,
    required String type,
    required String priority,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: '/todo/create',
      body: {
        'title': title,
        'description': description,
        'type': type,
        'priority': priority,
      },
      decoder: (json) => ApiUserTodoData.fromJson(json as Map<String, dynamic>),
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
    );
  }

  Future<void> deleteTodoById(String id) async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.delete,
      path: '/todo/delete/$id',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
    );
  }

  Future<DataResponse<ApiUserTodoData>?> updateTodo({
    required String id,
    required String title,
    required String description,
    required String priority,
    required String type,
    bool? completed,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.put,
      path: '/todo/update/$id',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      decoder: (json) => ApiUserTodoData.fromJson(json as Map<String, dynamic>),
      body: {
        'title': title,
        'description': description,
        'priority': priority,
        'type': type,
        'isCompleted': completed,
      },
    );
  }
}
