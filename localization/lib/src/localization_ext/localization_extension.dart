import '../../localization.dart';

extension LocalizationExtension on String {
  String get localized {
    // Fixed Localization
    switch (this) {
      case 'error_1':
        return S.current.error1;
      case 'GOLD_PLAN':
        return S.current.goldPlan;
      case 'PREMIUM_PLAN':
        return S.current.premiumPlan;
      case 'GOLD_PLAN_DESC':
        return S.current.goldPlanDescription;
      case 'PREMIUM_PLAN_DESC':
        return S.current.premiumPlanDescription;
      case 'FREE_PLAN':
        return S.current.freePlan;
      case 'FREE_PLAN_DESC':
        return S.current.freePlanDescription;
      case 'ACCESS_TO_AI_CHAT_BOT':
        return S.current.accessToAiChatbot;
      case 'ACCESS_TO_AI_CHAT_BOT_DESC':
        return S.current.accessToAiChatbotDesc;
      case 'ACCESS_TO_COMMUNITY':
        return S.current.accessToCommunityHub;
      case 'ACCESS_TO_COMMUNITY_DESC':
        return S.current.accessToCommunityHubDesc;

      default:
        return this;
    }
  }
}
