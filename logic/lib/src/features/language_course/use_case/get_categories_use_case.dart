import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_categories_use_case.freezed.dart';

@Injectable()
class GetCategoriesUseCase
    extends BaseFutureUseCase<GetCategoriesInput, GetCategoriesOutput> {
  final LanguageCourseRepository _languageCourseRepository;

  const GetCategoriesUseCase(this._languageCourseRepository);

  @override
  Future<GetCategoriesOutput> buildUseCase(GetCategoriesInput input) async {
    final categories = await _languageCourseRepository.getCategories();

    return GetCategoriesOutput(categories: categories);
  }
}

@freezed
class GetCategoriesInput extends BaseInput with _$GetCategoriesInput {
  const GetCategoriesInput._();
  const factory GetCategoriesInput() = _GetCategoriesInput;
}

@freezed
class GetCategoriesOutput extends BaseOutput with _$GetCategoriesOutput {
  const GetCategoriesOutput._();
  const factory GetCategoriesOutput({
    required List<Category> categories,
  }) = _GetCategoriesOutput;
}
