import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiUserProfileDataMapper
    extends BaseDataMapper<ApiUserProfileData, UserProfile>
    with DataMapperMixin {
  @override
  ApiUserProfileData mapToData(UserProfile entity) {
    return ApiUserProfileData(
      userProfileId: entity.userProfileId,
      nativeLanguage: entity.nativeLanguage.serverValue,
      learningLanguage: entity.learningLanguage.serverValue,
      learningTypeOne: entity.learningTypeOne?.serverValue,
      learningTypeTwo: entity.learningTypeTwo?.serverValue,
      learningTypeThree: entity.learningTypeThree?.serverValue,
    );
  }

  @override
  UserProfile mapToEntity(ApiUserProfileData? data) {
    return UserProfile(
      userProfileId: data?.userProfileId ?? UserProfile.defaultUserProfileId,
      nativeLanguage: LearningLanguage.fromServerValue(data?.nativeLanguage) ??
          UserProfile.defaultNativeLanguage,
      learningLanguage:
          LearningLanguage.fromServerValue(data?.learningLanguage) ??
              UserProfile.defaultLearningLanguage,
      learningTypeOne: LearningType.fromServerValue(data?.learningTypeOne),
      learningTypeTwo: LearningType.fromServerValue(data?.learningTypeTwo),
      learningTypeThree: LearningType.fromServerValue(data?.learningTypeThree),
    );
  }
}
