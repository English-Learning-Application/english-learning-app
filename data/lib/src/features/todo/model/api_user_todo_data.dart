import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user_todo_data.freezed.dart';
part 'api_user_todo_data.g.dart';

@freezed
class ApiUserTodoData with _$ApiUserTodoData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserTodoData({
    @JsonKey(name: 'userTodoId') String? userTodoId,
    @JsonKey(name: 'todoTitle') String? todoTitle,
    @JsonKey(name: 'todoDescription') String? todoDescription,
    @JsonKey(name: 'completed') bool? completed,
    @JsonKey(name: 'todoType') String? todoType,
    @JsonKey(name: 'todoPriority') String? todoPriority,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiUserTodoData;

  factory ApiUserTodoData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserTodoDataFromJson(json);
}
