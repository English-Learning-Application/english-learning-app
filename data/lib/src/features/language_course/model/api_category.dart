import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_category.freezed.dart';
part 'api_category.g.dart';

@freezed
class ApiCategory with _$ApiCategory {
  @JsonSerializable(explicitToJson: true)
  const factory ApiCategory({
    @JsonKey(name: 'categoryId') String? categoryId,
    @JsonKey(name: 'categoryKey') String? categoryKey,
    @JsonKey(name: 'englishName') String? englishName,
    @JsonKey(name: 'vietnameseName') String? vietnameseName,
    @JsonKey(name: 'frenchName') String? frenchName,
    @JsonKey(name: 'englishDescription') String? englishDescription,
    @JsonKey(name: 'vietnameseDescription') String? vietnameseDescription,
    @JsonKey(name: 'frenchDescription') String? frenchDescription,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiCategory;

  factory ApiCategory.fromJson(Map<String, dynamic> json) =>
      _$ApiCategoryFromJson(json);
}
