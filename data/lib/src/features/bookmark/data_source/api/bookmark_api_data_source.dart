import 'package:data/data.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BookmarkApiDataSource {
  final AuthAppServerApiClient _authAppServerApiClient;

  const BookmarkApiDataSource(this._authAppServerApiClient);

  Future<void> bookmarkCourse({
    required String courseId,
    required String courseType,
  }) async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: '/course/bookmarks',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'courseId': courseId,
        'courseType': courseType,
      },
    );
  }

  Future<DataResponse<bool>?> deleteBookmarkCourse({
    required String courseId,
    required String courseType,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.delete,
      path: '/course/bookmarks',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      decoder: (dynamic data) => data as bool,
      body: {
        'courseId': courseId,
        'courseType': courseType,
      },
    );
  }

  Future<DataResponse<bool>?> getBookmarkCourse({
    required String courseId,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: '/course/bookmarks/$courseId',
      decoder: (dynamic data) => data as bool,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
    );
  }

  Future<ListResponse<ApiUserBookmarkedCourseData>?>
      getUserBookmarkedCourses() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: '/course/bookmarks',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiUserBookmarkedCourseData.fromJson(json as Map<String, dynamic>),
    );
  }
}
