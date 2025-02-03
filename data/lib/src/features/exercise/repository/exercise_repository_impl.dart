import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@LazySingleton(as: ExerciseRepository)
class ExerciseRepositoryImpl implements ExerciseRepository {
  final ApiFlashCardLearningInfoMapper _apiFlashCardLearningInfoMapper;
  final ApiFlashCardLearningMapper _apiFlashCardLearningMapper;
  final ApiQuizLearningMapper _apiQuizLearningMapper;
  final ApiQuizLearningInfoMapper _apiQuizLearningInfoMapper;
  final ApiMatchingLearningInfoMapper _apiMatchingLearningInfoMapper;
  final ApiMatchingLearningMapper _apiMatchingLearningMapper;
  final ApiPronunciationAssessmentModelMapper
      _apiPronunciationAssessmentModelMapper;
  final ApiPronunciationLearningMapper _apiPronunciationLearningMapper;
  final ApiPronunciationLearningInfoModelMapper
      _apiPronunciationLearningInfoModelMapper;
  final ApiLearningProgressMapper _apiLearningProgressMapper;
  final ExerciseApiDataSource _exerciseApiDataSource;

  const ExerciseRepositoryImpl(
    this._apiFlashCardLearningInfoMapper,
    this._apiFlashCardLearningMapper,
    this._apiQuizLearningMapper,
    this._apiQuizLearningInfoMapper,
    this._apiMatchingLearningInfoMapper,
    this._apiMatchingLearningMapper,
    this._apiPronunciationAssessmentModelMapper,
    this._apiPronunciationLearningMapper,
    this._apiPronunciationLearningInfoModelMapper,
    this._apiLearningProgressMapper,
    this._exerciseApiDataSource,
  );

  @override
  Future<PronunciationAssessment> getPronunciationAssessment({
    required String text,
    required String audioPath,
  }) async {
    final fileBytes = File(audioPath).readAsBytesSync();
    final base64Audio = base64Encode(fileBytes);

    final resp = await _exerciseApiDataSource.getPronunciationAssessment(
      text: text,
      base64Audio: base64Audio,
    );

    return _apiPronunciationAssessmentModelMapper.mapToEntity(resp?.data);
  }

  @override
  Future<List<FlashCardLearning>> updateFlashCardLearning({
    required List<FlashCardLearningEntity> flashCardLearnings,
    required List<String> learnedItemIds,
    required List<String> skippedItemIds,
    required String courseId,
  }) async {
    final correctFlashCardLearnings = flashCardLearnings
        .where((element) => learnedItemIds.contains(element.id))
        .toList();

    final skippedFlashCardLearnings = flashCardLearnings
        .where((element) => skippedItemIds.contains(element.id))
        .toList();

    final correctItems = correctFlashCardLearnings
        .map((e) => _apiFlashCardLearningInfoMapper.mapToData(e))
        .toList();

    final skippedItems = skippedFlashCardLearnings
        .map((e) => _apiFlashCardLearningInfoMapper.mapToData(e))
        .toList();

    final ApiFlashCardLearningUpdateModel flashCardLearningUpdateModel =
        ApiFlashCardLearningUpdateModel(
      skippedFlashCardLearningInfo: skippedItems,
      learnedFlashCardLearningInfo: correctItems,
    );

    final resp = await _exerciseApiDataSource.updateFlashCardLearning(
      flashCardLearningUpdateModel: flashCardLearningUpdateModel,
      courseId: courseId,
    );

    return _apiFlashCardLearningMapper.mapToListEntities(resp?.results ?? []);
  }

  @override
  Future<List<QuizLearning>> updateQuizLearning({
    required List<QuizLearningEntity> quizLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
    required String courseId,
  }) async {
    final correctQuizLearnings = quizLearnings
        .where((element) => correctItemIds.contains(element.id))
        .toList();
    final incorrectQuizLearnings = quizLearnings
        .where((element) => incorrectItemIds.contains(element.id))
        .toList();
    final correctItems = correctQuizLearnings
        .map((e) => _apiQuizLearningInfoMapper.mapToData(e))
        .toList();
    final incorrectItems = incorrectQuizLearnings
        .map((e) => _apiQuizLearningInfoMapper.mapToData(e))
        .toList();
    final ApiQuizLearningUpdateModel quizLearningUpdateModel =
        ApiQuizLearningUpdateModel(
      incorrectQuestionLearningInfo: incorrectItems,
      correctQuestionLearningInfo: correctItems,
    );
    final resp = await _exerciseApiDataSource.updateQuizLearning(
      quizLearningUpdateModel: quizLearningUpdateModel,
      courseId: courseId,
    );
    return _apiQuizLearningMapper.mapToListEntities(resp?.results ?? []);
  }

  @override
  Future<List<MatchingLearning>> updateMatchingLearning({
    required List<MatchingLearningEntity> matchingLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
    required String courseId,
  }) async {
    final correctMatchingLearnings = matchingLearnings
        .where((element) => correctItemIds.contains(element.id))
        .toList();
    final incorrectMatchingLearnings = matchingLearnings
        .where((element) => incorrectItemIds.contains(element.id))
        .toList();
    final correctItems = correctMatchingLearnings
        .map((e) => _apiMatchingLearningInfoMapper.mapToData(e))
        .toList();
    final incorrectItems = incorrectMatchingLearnings
        .map((e) => _apiMatchingLearningInfoMapper.mapToData(e))
        .toList();
    final ApiMatchingLearningUpdateModel matchingLearningUpdateModel =
        ApiMatchingLearningUpdateModel(
      incorrectMatchingLearningInfo: incorrectItems,
      correctMatchingLearningInfo: correctItems,
    );
    final resp = await _exerciseApiDataSource.updateMatchingLearning(
      matchingLearningUpdateModel: matchingLearningUpdateModel,
      courseId: courseId,
    );

    return _apiMatchingLearningMapper.mapToListEntities(resp?.results ?? []);
  }

  @override
  Future<List<PronunciationLearning>> updatePronunciationLearning({
    required List<PronunciationLearningEntity> pronunciationLearnings,
    required String courseId,
  }) async {
    final items = _apiPronunciationLearningInfoModelMapper.mapToListData(
      pronunciationLearnings,
    );
    final resp = await _exerciseApiDataSource.updatePronunciationLearning(
      pronunciationLearningUpdateModel: ApiPronunciationLearningUpdateModel(
        pronunciationLearningInfo: items,
      ),
      courseId: courseId,
    );
    return _apiPronunciationLearningMapper
        .mapToListEntities(resp?.results ?? []);
  }

  @override
  Future<LearningProgress> getLearningProgress({
    required List<String> courseIds,
  }) async {
    final resp = await _exerciseApiDataSource.getLearningProgress(
      courseIds: courseIds,
    );

    return _apiLearningProgressMapper.mapToEntity(resp?.data);
  }
}
