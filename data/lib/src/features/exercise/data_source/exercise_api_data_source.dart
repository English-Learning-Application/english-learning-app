import 'package:data/data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ExerciseApiDataSource {
  final AuthAppServerApiClient _authAppServerApiClient;
  const ExerciseApiDataSource(
    this._authAppServerApiClient,
  );

  Future<ListResponse<ApiFlashCardLearning>?> updateFlashCardLearning({
    required ApiFlashCardLearningUpdateModel flashCardLearningUpdateModel,
    required String courseId,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.exerciseFlashCard,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      body: {
        'skippedFlashCardLearningInfo':
            flashCardLearningUpdateModel.skippedFlashCardLearningInfo,
        'learnedFlashCardLearningInfo':
            flashCardLearningUpdateModel.learnedFlashCardLearningInfo,
        'courseId': courseId,
      },
      decoder: (dynamic json) {
        return ApiFlashCardLearning.fromJson(json as Map<String, dynamic>);
      },
    );
  }

  Future<ListResponse<ApiQuizLearning>?> updateQuizLearning({
    required ApiQuizLearningUpdateModel quizLearningUpdateModel,
    required String courseId,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.exerciseQuiz,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      body: {
        'incorrectQuestionLearningInfo':
            quizLearningUpdateModel.incorrectQuestionLearningInfo,
        'correctQuestionLearningInfo':
            quizLearningUpdateModel.correctQuestionLearningInfo,
        'courseId': courseId,
      },
      decoder: (dynamic json) {
        return ApiQuizLearning.fromJson(json as Map<String, dynamic>);
      },
    );
  }

  Future<ListResponse<ApiMatchingLearning>?> updateMatchingLearning({
    required ApiMatchingLearningUpdateModel matchingLearningUpdateModel,
    required String courseId,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.exerciseMatching,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      body: {
        'incorrectMatchingLearningInfo':
            matchingLearningUpdateModel.incorrectMatchingLearningInfo,
        'correctMatchingLearningInfo':
            matchingLearningUpdateModel.correctMatchingLearningInfo,
        'courseId': courseId,
      },
      decoder: (dynamic json) {
        return ApiMatchingLearning.fromJson(json as Map<String, dynamic>);
      },
    );
  }

  Future<DataResponse<ApiPronunciationAssessmentModel>?>
      getPronunciationAssessment({
    required String text,
    required String base64Audio,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.pronunciationAssessment,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'originalText': text,
        'audioFormat': 'm4a',
        'base64Audio': base64Audio,
      },
      decoder: (dynamic json) {
        return ApiPronunciationAssessmentModel.fromJson(
            json as Map<String, dynamic>);
      },
    );
  }

  Future<ListResponse<ApiPronunciationLearning>?> updatePronunciationLearning({
    required ApiPronunciationLearningUpdateModel
        pronunciationLearningUpdateModel,
    required String courseId,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.exercisePronunciation,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      body: {
        'pronunciationLearningUpdateInfo':
            pronunciationLearningUpdateModel.pronunciationLearningInfo,
        'courseId': courseId,
      },
      decoder: (dynamic json) {
        return ApiPronunciationLearning.fromJson(json as Map<String, dynamic>);
      },
    );
  }

  Future<DataResponse<ApiLearningProgress>?> getLearningProgress({
    required List<String> courseIds,
  }) {
    return _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: ExerciseEndpoints.exerciseProgress,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      queryParameters: {
        'courseIds': courseIds.join(','),
      },
      decoder: (dynamic json) {
        return ApiLearningProgress.fromJson(json as Map<String, dynamic>);
      },
    );
  }
}
