import 'package:freezed_annotation/freezed_annotation.dart';

part 'expression.freezed.dart';

@freezed
class Expression with _$Expression {
  const factory Expression({
    @Default(Expression.defaultExpressionId) String expressionId,
    @Default(Expression.defaultEnglishExpression) String englishExpression,
    @Default(Expression.defaultVietnameseExpression)
    String vietnameseExpression,
    @Default(Expression.defaultFrenchExpression) String frenchExpression,
    @Default(Expression.defaultExampleUsage) Map<String, dynamic> exampleUsage,
    @Default(Expression.defaultCreatedAt) DateTime? createdAt,
    @Default(Expression.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Expression;

  static const defaultExpressionId = '';
  static const defaultEnglishExpression = '';
  static const defaultVietnameseExpression = '';
  static const defaultFrenchExpression = '';
  static const Map<String, dynamic> defaultExampleUsage = {};
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
