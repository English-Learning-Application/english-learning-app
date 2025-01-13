import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_expression_data.freezed.dart';
part 'api_expression_data.g.dart';

@freezed
class ApiExpressionData with _$ApiExpressionData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiExpressionData({
    @JsonKey(name: 'expressionId') String? expressionId,
    @JsonKey(name: 'englishExpression') String? englishExpression,
    @JsonKey(name: 'vietnameseExpression') String? vietnameseExpression,
    @JsonKey(name: 'frenchExpression') String? frenchExpression,
    @JsonKey(name: 'exampleUsage') String? exampleUsage,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiExpressionData;

  factory ApiExpressionData.fromJson(Map<String, dynamic> json) =>
      _$ApiExpressionDataFromJson(json);
}
