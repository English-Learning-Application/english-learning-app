import 'package:objectbox/objectbox.dart';

@Entity()
class LocalExpressionData {
  @Id()
  int? id;
  String? expressionId;
  String? englishExpression;
  String? vietnameseExpression;
  String? frenchExpression;
  String? exampleUsage;
  String? createdAt;
  String? updatedAt;

  LocalExpressionData({
    this.id,
    this.expressionId,
    this.englishExpression,
    this.vietnameseExpression,
    this.frenchExpression,
    this.exampleUsage,
    this.createdAt,
    this.updatedAt,
  });

  @override
  int get hashCode {
    return id.hashCode ^
        expressionId.hashCode ^
        englishExpression.hashCode ^
        vietnameseExpression.hashCode ^
        frenchExpression.hashCode ^
        exampleUsage.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return "LocalExpressionData(id: $id, expressionId: $expressionId, englishExpression: $englishExpression, vietnameseExpression: $vietnameseExpression, frenchExpression: $frenchExpression, exampleUsage: $exampleUsage, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalExpressionData &&
        other.id == id &&
        other.expressionId == expressionId &&
        other.englishExpression == englishExpression &&
        other.vietnameseExpression == vietnameseExpression &&
        other.frenchExpression == frenchExpression &&
        other.exampleUsage == exampleUsage &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }
}
