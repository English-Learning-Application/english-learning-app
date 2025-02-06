part of 'todo_details.dart';

@freezed
class TodoDetailsViewModelData extends BaseViewModelData
    with _$TodoDetailsViewModelData {
  const factory TodoDetailsViewModelData({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(TodoType.general) TodoType type,
    @Default(TodoPriority.low) TodoPriority priority,
    @Default(false) bool isCompleted,
  }) = _TodoDetailsViewModelData;
}
