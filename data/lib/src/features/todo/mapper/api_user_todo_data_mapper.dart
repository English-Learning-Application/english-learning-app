import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

@Injectable()
class ApiUserTodoDataMapper extends BaseDataMapper<ApiUserTodoData, UserTodo>
    with DataMapperMixin {
  @override
  ApiUserTodoData mapToData(UserTodo entity) {
    return ApiUserTodoData(
      userTodoId: entity.id,
      todoTitle: entity.title,
      todoDescription: entity.description,
      completed: entity.completed,
      todoType: entity.type.serverValue,
      todoPriority: entity.priority.serverValue,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  UserTodo mapToEntity(ApiUserTodoData? data) {
    return UserTodo(
      id: data?.userTodoId ?? UserTodo.defaultUserTodoId,
      title: data?.todoTitle ?? UserTodo.defaultTodoTitle,
      description: data?.todoDescription ?? UserTodo.defaultTodoDescription,
      completed: data?.completed ?? UserTodo.defaultCompleted,
      type: TodoType.fromServerValue(data?.todoType),
      priority: TodoPriority.fromServerValue(data?.todoPriority),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
