part of 'course.dart';

@Injectable()
class CourseViewModel extends BaseViewModel<CourseViewModelData> {
  CourseViewModel() : super(const CourseViewModelData());

  void changeLearningLanguage(LearningLanguage learningLanguage) {
    updateData(
      viewModelData.copyWith(
        learningLanguage: learningLanguage,
      ),
    );
  }
}
