part of 'progression.dart';

@Injectable()
class ProgressionViewModel extends BaseViewModel<ProgressionViewModelData> {
  final GetAllLearningProgressUseCase _getAllLearningProgressUseCase;

  ProgressionViewModel(this._getAllLearningProgressUseCase)
      : super( const ProgressionViewModelData());

  void onInit() async {
    await runViewModelCatching(
      action: () async {
        final learningProgressOutput =
            await _getAllLearningProgressUseCase.execute(
          const GetAllLearningProgressInput(),
        );

        updateData(
          viewModelData.copyWith(
            learningProgress: learningProgressOutput.learningProgress,
            categoryCourses: learningProgressOutput.categoryCourses,
            languageCourses: learningProgressOutput.languageCourses,
          ),
        );
      },
    );
  }
}
