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
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.exerciseFlashCard,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      body: flashCardLearningUpdateModel.toJson(),
      decoder: (dynamic json) {
        return ApiFlashCardLearning.fromJson(json as Map<String, dynamic>);
      },
    );
  }

  Future<ListResponse<ApiQuizLearning>?> updateQuizLearning({
    required ApiQuizLearningUpdateModel quizLearningUpdateModel,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.exerciseQuiz,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      body: quizLearningUpdateModel.toJson(),
      decoder: (dynamic json) {
        return ApiQuizLearning.fromJson(json as Map<String, dynamic>);
      },
    );
  }

  Future<ListResponse<ApiMatchingLearning>?> updateMatchingLearning({
    required ApiMatchingLearningUpdateModel matchingLearningUpdateModel,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: ExerciseEndpoints.exerciseMatching,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      body: matchingLearningUpdateModel.toJson(),
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
}
