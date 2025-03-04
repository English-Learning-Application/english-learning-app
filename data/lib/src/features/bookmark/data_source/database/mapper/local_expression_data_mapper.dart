import 'dart:convert';

import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_expression_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalExpressionDataMapper
    extends BaseDataMapper<LocalExpressionData, Expression>
    with DataMapperMixin {
  @override
  LocalExpressionData mapToData(Expression entity) {
    return LocalExpressionData(
      expressionId: entity.expressionId,
      englishExpression: entity.englishExpression,
      vietnameseExpression: entity.vietnameseExpression,
      frenchExpression: entity.frenchExpression,
      exampleUsage: jsonEncode(entity.exampleUsage),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Expression mapToEntity(LocalExpressionData? data) {
    return Expression(
      expressionId: data?.expressionId ?? Expression.defaultExpressionId,
      englishExpression:
          data?.englishExpression ?? Expression.defaultEnglishExpression,
      vietnameseExpression:
          data?.vietnameseExpression ?? Expression.defaultVietnameseExpression,
      frenchExpression:
          data?.frenchExpression ?? Expression.defaultFrenchExpression,
      exampleUsage: jsonDecode(data?.exampleUsage ?? '{}'),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
