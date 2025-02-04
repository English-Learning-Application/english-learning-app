part of 'category_course_details.dart';

@Injectable()
class CategoryCourseDetailsViewModel
    extends BaseViewModel<CategoryCourseDetailsViewModelData> {
  CategoryCourseDetailsViewModel()
      : super(const CategoryCourseDetailsViewModelData());

  void init({
    required LearningLanguage language,
    required Category category,
    required List<CategoryCourse> categoryCourses,
  }) {
    updateData(
      viewModelData.copyWith(
        language: language,
        category: category,
        categoryCourses: categoryCourses,
      ),
    );
  }
}
