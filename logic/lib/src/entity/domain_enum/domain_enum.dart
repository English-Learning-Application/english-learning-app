import 'package:app/app.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:services/services.dart';

enum InitialAppRoute {
  login,
  home,
}

enum AchievementType {
  flashCard(ServerRequestResponseConstants.achievementFlashCard),
  quiz(ServerRequestResponseConstants.achievementQuiz),
  matching(ServerRequestResponseConstants.achievementMatching),
  pronunciation(ServerRequestResponseConstants.achievementPronunciation);

  const AchievementType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.achievementFlashCard:
        return AchievementType.flashCard;
      case ServerRequestResponseConstants.achievementQuiz:
        return AchievementType.quiz;
      case ServerRequestResponseConstants.achievementMatching:
        return AchievementType.matching;
      case ServerRequestResponseConstants.achievementPronunciation:
        return AchievementType.pronunciation;
      default:
        return AchievementType.flashCard;
    }
  }

  String get achievementTypeName {
    switch (this) {
      case AchievementType.flashCard:
        return S.current.flashCard;
      case AchievementType.quiz:
        return S.current.quiz;
      case AchievementType.matching:
        return S.current.matching;
      case AchievementType.pronunciation:
        return S.current.pronunciation;
    }
  }
}

enum CourseType {
  language(ServerRequestResponseConstants.languageCourse),
  category(ServerRequestResponseConstants.categoryCourse);

  const CourseType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.languageCourse:
        return CourseType.language;
      case ServerRequestResponseConstants.categoryCourse:
        return CourseType.category;
      default:
        return CourseType.language;
    }
  }

  String get courseTypeName {
    switch (this) {
      case CourseType.language:
        return S.current.language;
      case CourseType.category:
        return S.current.category;
    }
  }
}

enum LearningLanguage {
  english(ServerRequestResponseConstants.english),
  vietnamese(ServerRequestResponseConstants.vietnamese),
  french(ServerRequestResponseConstants.french);

  const LearningLanguage(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.english:
        return LearningLanguage.english;
      case ServerRequestResponseConstants.vietnamese:
        return LearningLanguage.vietnamese;
      case ServerRequestResponseConstants.french:
        return LearningLanguage.french;
      default:
        return LearningLanguage.english;
    }
  }

  String get languageName {
    switch (this) {
      case LearningLanguage.english:
        return S.current.english;
      case LearningLanguage.vietnamese:
        return S.current.vietnamese;
      case LearningLanguage.french:
        return S.current.french;
    }
  }

  String get textToSpeechLanguage {
    switch (this) {
      case LearningLanguage.english:
        return 'en-US';
      case LearningLanguage.vietnamese:
        return 'vi-VN';
      case LearningLanguage.french:
        return 'fr-FR';
    }
  }

  SvgGenImage get icon {
    switch (this) {
      case LearningLanguage.english:
        return Assets.icons.icEngland;
      case LearningLanguage.vietnamese:
        return Assets.icons.icVietnam;
      case LearningLanguage.french:
        return Assets.icons.icFrance;
    }
  }

  SvgGenImage get landmarkIcon {
    switch (this) {
      case LearningLanguage.english:
        return Assets.icons.icEnglandLandmark;
      case LearningLanguage.vietnamese:
        return Assets.icons.icVietnamLandmark;
      case LearningLanguage.french:
        return Assets.icons.icFranceLandmark;
    }
  }

  Color get color {
    switch (this) {
      case LearningLanguage.english:
        return FoundationColors.usaColor;
      case LearningLanguage.vietnamese:
        return FoundationColors.vietnameseColor;
      case LearningLanguage.french:
        return FoundationColors.frenchColor;
    }
  }

  @override
  String toString() => languageName;
}

enum ChatMessageType {
  text(ServerRequestResponseConstants.textMessage),
  join(ServerRequestResponseConstants.joinMessage),
  leave(ServerRequestResponseConstants.leaveMessage);

  const ChatMessageType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.textMessage:
        return ChatMessageType.text;
      case ServerRequestResponseConstants.joinMessage:
        return ChatMessageType.join;
      case ServerRequestResponseConstants.leaveMessage:
        return ChatMessageType.leave;
      default:
        return ChatMessageType.text;
    }
  }
}

enum LearningMode {
  flashCard(ServerRequestResponseConstants.flashCard),
  matching(ServerRequestResponseConstants.matching),
  quiz(ServerRequestResponseConstants.quiz),
  pronunciation(ServerRequestResponseConstants.pronunciation);

  const LearningMode(this.serverValue);
  final String serverValue;
}

enum LearningContentType {
  word(ServerRequestResponseConstants.word),
  expression(ServerRequestResponseConstants.expression),
  idiom(ServerRequestResponseConstants.idiom),
  sentence(ServerRequestResponseConstants.sentence),
  phrasalVerb(ServerRequestResponseConstants.phrasalVerb),
  tense(ServerRequestResponseConstants.tense),
  phonetics(ServerRequestResponseConstants.phonetics);

  const LearningContentType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.word:
        return LearningContentType.word;
      case ServerRequestResponseConstants.expression:
        return LearningContentType.expression;
      case ServerRequestResponseConstants.idiom:
        return LearningContentType.idiom;
      case ServerRequestResponseConstants.sentence:
        return LearningContentType.sentence;
      case ServerRequestResponseConstants.phrasalVerb:
        return LearningContentType.phrasalVerb;
      case ServerRequestResponseConstants.tense:
        return LearningContentType.tense;
      case ServerRequestResponseConstants.phonetics:
        return LearningContentType.phonetics;
      default:
        return LearningContentType.word;
    }
  }

  String get contentTypeName {
    switch (this) {
      case LearningContentType.word:
        return S.current.word;
      case LearningContentType.expression:
        return S.current.expression;
      case LearningContentType.idiom:
        return S.current.idiom;
      case LearningContentType.sentence:
        return S.current.sentence;
      case LearningContentType.phrasalVerb:
        return S.current.phrasalVerb;
      case LearningContentType.tense:
        return S.current.tense;
      case LearningContentType.phonetics:
        return S.current.phonetic;
    }
  }
}

enum ChatType {
  aiChat(ServerRequestResponseConstants.aiBot),
  privateChat(ServerRequestResponseConstants.privateChat),
  groupChat(ServerRequestResponseConstants.groupChat);

  const ChatType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.aiBot:
        return ChatType.aiChat;
      case ServerRequestResponseConstants.privateChat:
        return ChatType.privateChat;
      case ServerRequestResponseConstants.groupChat:
        return ChatType.groupChat;
      default:
        return ChatType.privateChat;
    }
  }
}

enum WordType {
  noun(ServerRequestResponseConstants.noun),
  verb(ServerRequestResponseConstants.verb),
  adjective(ServerRequestResponseConstants.adjective),
  adverb(ServerRequestResponseConstants.adverb),
  preposition(ServerRequestResponseConstants.preposition),
  conjunction(ServerRequestResponseConstants.conjunction),
  pronoun(ServerRequestResponseConstants.pronoun),
  interjection(ServerRequestResponseConstants.interjection);

  const WordType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.noun:
        return WordType.noun;
      case ServerRequestResponseConstants.verb:
        return WordType.verb;
      case ServerRequestResponseConstants.adjective:
        return WordType.adjective;
      case ServerRequestResponseConstants.adverb:
        return WordType.adverb;
      case ServerRequestResponseConstants.preposition:
        return WordType.preposition;
      case ServerRequestResponseConstants.conjunction:
        return WordType.conjunction;
      case ServerRequestResponseConstants.pronoun:
        return WordType.pronoun;
      case ServerRequestResponseConstants.interjection:
        return WordType.interjection;
      default:
        return WordType.noun;
    }
  }

  String get wordTypeName {
    switch (this) {
      case WordType.noun:
        return S.current.noun;
      case WordType.verb:
        return S.current.verb;
      case WordType.adjective:
        return S.current.adjective;
      case WordType.adverb:
        return S.current.adverb;
      case WordType.preposition:
        return S.current.preposition;
      case WordType.conjunction:
        return S.current.conjunction;
      case WordType.pronoun:
        return S.current.pronoun;
      case WordType.interjection:
        return S.current.interjection;
    }
  }
}

enum LearningType {
  speaking(ServerRequestResponseConstants.speaking),
  listening(ServerRequestResponseConstants.listening),
  reading(ServerRequestResponseConstants.reading),
  writing(ServerRequestResponseConstants.writing),
  vocabulary(ServerRequestResponseConstants.vocabulary),
  grammar(ServerRequestResponseConstants.grammar);

  const LearningType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.speaking:
        return LearningType.speaking;
      case ServerRequestResponseConstants.listening:
        return LearningType.listening;
      case ServerRequestResponseConstants.reading:
        return LearningType.reading;
      case ServerRequestResponseConstants.writing:
        return LearningType.writing;
      case ServerRequestResponseConstants.vocabulary:
        return LearningType.vocabulary;
      case ServerRequestResponseConstants.grammar:
        return LearningType.grammar;
      default:
        return LearningType.speaking;
    }
  }

  SvgGenImage get icon {
    switch (this) {
      case LearningType.speaking:
        return Assets.icons.icSpeaking;
      case LearningType.listening:
        return Assets.icons.icListening;
      case LearningType.reading:
        return Assets.icons.icReading;
      case LearningType.writing:
        return Assets.icons.icWriting;
      case LearningType.vocabulary:
        return Assets.icons.icVocabulary;
      case LearningType.grammar:
        return Assets.icons.icGrammar;
    }
  }

  String get learningTypeName {
    switch (this) {
      case LearningType.speaking:
        return S.current.speaking;
      case LearningType.listening:
        return S.current.listening;
      case LearningType.reading:
        return S.current.reading;
      case LearningType.writing:
        return S.current.writing;
      case LearningType.vocabulary:
        return S.current.vocabulary;
      case LearningType.grammar:
        return S.current.grammar;
    }
  }
}

enum RegistrationStatus {
  confirmed(ServerRequestResponseConstants.confirmed),
  notConfirmed(ServerRequestResponseConstants.notConfirmed);

  const RegistrationStatus(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.confirmed:
        return RegistrationStatus.confirmed;
      case ServerRequestResponseConstants.notConfirmed:
        return RegistrationStatus.notConfirmed;
      default:
        return RegistrationStatus.notConfirmed;
    }
  }
}

enum ProductPlatform {
  android(ServerRequestResponseConstants.android),
  ios(ServerRequestResponseConstants.ios);

  const ProductPlatform(this.serverValue);
  final String serverValue;
}

enum DateLengthUnit {
  day(ServerRequestResponseConstants.day),
  week(ServerRequestResponseConstants.week),
  month(ServerRequestResponseConstants.month),
  year(ServerRequestResponseConstants.year);

  const DateLengthUnit(this.serverValue);
  final String serverValue;

  String get unitName {
    switch (this) {
      case DateLengthUnit.day:
        return S.current.day;
      case DateLengthUnit.week:
        return S.current.week;
      case DateLengthUnit.month:
        return S.current.month;
      case DateLengthUnit.year:
        return S.current.year;
    }
  }
}

enum AccessType {
  v1(ServerRequestResponseConstants.v1),
  v2(ServerRequestResponseConstants.v2),
  v3(ServerRequestResponseConstants.v3);

  const AccessType(this.serverValue);
  final String serverValue;
}

enum Gender {
  male(ServerRequestResponseConstants.male),
  female(ServerRequestResponseConstants.female),
  preferNotToSay(ServerRequestResponseConstants.preferNotToSay),
  other(ServerRequestResponseConstants.other);

  const Gender(this.serverValue);
  final String serverValue;
  static const defaultValue = male;
}

enum LanguageCode {
  en(
    localeCode: LocaleConstants.en,
    serverValue: ServerRequestResponseConstants.en,
  ),
  vi(
    localeCode: LocaleConstants.vi,
    serverValue: ServerRequestResponseConstants.vi,
  );

  const LanguageCode({
    required this.localeCode,
    required this.serverValue,
  });
  final String localeCode;
  final String serverValue;
  static const defaultValue = en;

  String get languageName {
    switch (this) {
      case LanguageCode.en:
        return S.current.english;
      case LanguageCode.vi:
        return S.current.vietnamese;
    }
  }

  String get textToSpeechLanguage {
    switch (this) {
      case LanguageCode.en:
        return 'en-US';
      case LanguageCode.vi:
        return 'vi-VN';
    }
  }
}

enum CurrencyCode {
  vnd(ServerRequestResponseConstants.vnd),
  usd(ServerRequestResponseConstants.usd);

  const CurrencyCode(this.serverValue);
  final String serverValue;
  static const defaultValue = vnd;
}

enum CarrierProvider {
  ahamove(ServerRequestResponseConstants.ahamove),
  lalamove(ServerRequestResponseConstants.lalamove);

  const CarrierProvider(this.serverValue);
  final String serverValue;
}

enum ProductMediaKind {
  product(ServerRequestResponseConstants.productMediaKind),
  primary(ServerRequestResponseConstants.primaryMediaKind);

  const ProductMediaKind(this.serverValue);
  final String serverValue;
}

enum TerritoryCode {
  vn(ServerRequestResponseConstants.vietnamTerritory),
  sg(ServerRequestResponseConstants.singaporeTerritory),
  hk(ServerRequestResponseConstants.honkongTerritory);

  const TerritoryCode(this.serverValue);
  final String serverValue;
}

enum NotificationType {
  unknown,
  newPost,
  liked;

  static const defaultValue = unknown;
}

enum Nationality {
  afghanistan(ServerRequestResponseConstants.nationalityAfghanistan),
  alandIslands(ServerRequestResponseConstants.nationalityAlandIslands),
  albania(ServerRequestResponseConstants.nationalityAlbania),
  algeria(ServerRequestResponseConstants.nationalityAlgeria),
  americanSamoa(ServerRequestResponseConstants.nationalityAmericanSamoa),
  andorra(ServerRequestResponseConstants.nationalityAndorra),
  angola(ServerRequestResponseConstants.nationalityAngola),
  anguilla(ServerRequestResponseConstants.nationalityAnguilla),
  antarctica(ServerRequestResponseConstants.nationalityAntarctica),
  antiguaAndBarbuda(
      ServerRequestResponseConstants.nationalityAntiguaAndBarbuda),
  argentina(ServerRequestResponseConstants.nationalityArgentina),
  armenia(ServerRequestResponseConstants.nationalityArmenia),
  aruba(ServerRequestResponseConstants.nationalityAruba),
  australia(ServerRequestResponseConstants.nationalityAustralia),
  austria(ServerRequestResponseConstants.nationalityAustria),
  azerbaijan(ServerRequestResponseConstants.nationalityAzerbaijan),
  bahamas(ServerRequestResponseConstants.nationalityBahamas),
  bahrain(ServerRequestResponseConstants.nationalityBahrain),
  bangladesh(ServerRequestResponseConstants.nationalityBangladesh),
  barbados(ServerRequestResponseConstants.nationalityBarbados),
  belarus(ServerRequestResponseConstants.nationalityBelarus),
  belgium(ServerRequestResponseConstants.nationalityBelgium),
  belize(ServerRequestResponseConstants.nationalityBelize),
  benin(ServerRequestResponseConstants.nationalityBenin),
  bermuda(ServerRequestResponseConstants.nationalityBermuda),
  bhutan(ServerRequestResponseConstants.nationalityBhutan),
  bolivia(ServerRequestResponseConstants.nationalityBolivia),
  bonaireSintEustatiusSaba(
      ServerRequestResponseConstants.nationalityBonaireSintEustatiusSaba),
  bosniaAndHerzegovina(
      ServerRequestResponseConstants.nationalityBosniaAndHerzegovina),
  botswana(ServerRequestResponseConstants.nationalityBotswana),
  bouvetIsland(ServerRequestResponseConstants.nationalityBouvetIsland),
  brazil(ServerRequestResponseConstants.nationalityBrazil),
  britishIndianOceanTerritory(
      ServerRequestResponseConstants.nationalityBritishIndianOceanTerritory),
  bruneiDarussalam(ServerRequestResponseConstants.nationalityBruneiDarussalam),
  bulgaria(ServerRequestResponseConstants.nationalityBulgaria),
  burkinaFaso(ServerRequestResponseConstants.nationalityBurkinaFaso),
  burundi(ServerRequestResponseConstants.nationalityBurundi),
  cambodia(ServerRequestResponseConstants.nationalityCambodia),
  cameroon(ServerRequestResponseConstants.nationalityCameroon),
  canada(ServerRequestResponseConstants.nationalityCanada),
  capeVerde(ServerRequestResponseConstants.nationalityCapeVerde),
  caymanIslands(ServerRequestResponseConstants.nationalityCaymanIslands),
  centralAfricanRepublic(
      ServerRequestResponseConstants.nationalityCentralAfricanRepublic),
  chad(ServerRequestResponseConstants.nationalityChad),
  chile(ServerRequestResponseConstants.nationalityChile),
  china(ServerRequestResponseConstants.nationalityChina),
  christmasIsland(ServerRequestResponseConstants.nationalityChristmasIsland),
  cocosKeelingIslands(
      ServerRequestResponseConstants.nationalityCocosKeelingIslands),
  colombia(ServerRequestResponseConstants.nationalityColombia),
  comoros(ServerRequestResponseConstants.nationalityComoros),
  congo(ServerRequestResponseConstants.nationalityCongo),
  congoDemocraticRepublic(
      ServerRequestResponseConstants.nationalityCongoDemocraticRepublic),
  cookIslands(ServerRequestResponseConstants.nationalityCookIslands),
  costaRica(ServerRequestResponseConstants.nationalityCostaRica),
  coteDIvoire(ServerRequestResponseConstants.nationalityCoteDIvoire),
  croatia(ServerRequestResponseConstants.nationalityCroatia),
  cuba(ServerRequestResponseConstants.nationalityCuba),
  curacao(ServerRequestResponseConstants.nationalityCuracao),
  cyprus(ServerRequestResponseConstants.nationalityCyprus),
  czechRepublic(ServerRequestResponseConstants.nationalityCzechRepublic),
  denmark(ServerRequestResponseConstants.nationalityDenmark),
  djibouti(ServerRequestResponseConstants.nationalityDjibouti),
  dominica(ServerRequestResponseConstants.nationalityDominica),
  dominicanRepublic(
      ServerRequestResponseConstants.nationalityDominicanRepublic),
  ecuador(ServerRequestResponseConstants.nationalityEcuador),
  egypt(ServerRequestResponseConstants.nationalityEgypt),
  elSalvador(ServerRequestResponseConstants.nationalityElSalvador),
  equatorialGuinea(ServerRequestResponseConstants.nationalityEquatorialGuinea),
  eritrea(ServerRequestResponseConstants.nationalityEritrea),
  estonia(ServerRequestResponseConstants.nationalityEstonia),
  ethiopia(ServerRequestResponseConstants.nationalityEthiopia),
  falklandIslands(ServerRequestResponseConstants.nationalityFalklandIslands),
  faroeIslands(ServerRequestResponseConstants.nationalityFaroeIslands),
  fiji(ServerRequestResponseConstants.nationalityFiji),
  finland(ServerRequestResponseConstants.nationalityFinland),
  france(ServerRequestResponseConstants.nationalityFrance),
  frenchGuiana(ServerRequestResponseConstants.nationalityFrenchGuiana),
  frenchPolynesia(ServerRequestResponseConstants.nationalityFrenchPolynesia),
  frenchSouthernTerritories(
      ServerRequestResponseConstants.nationalityFrenchSouthernTerritories),
  gabon(ServerRequestResponseConstants.nationalityGabon),
  gambia(ServerRequestResponseConstants.nationalityGambia),
  georgia(ServerRequestResponseConstants.nationalityGeorgia),
  germany(ServerRequestResponseConstants.nationalityGermany),
  ghana(ServerRequestResponseConstants.nationalityGhana),
  gibraltar(ServerRequestResponseConstants.nationalityGibraltar),
  greece(ServerRequestResponseConstants.nationalityGreece),
  greenland(ServerRequestResponseConstants.nationalityGreenland),
  grenada(ServerRequestResponseConstants.nationalityGrenada),
  guadeloupe(ServerRequestResponseConstants.nationalityGuadeloupe),
  guam(ServerRequestResponseConstants.nationalityGuam),
  guatemala(ServerRequestResponseConstants.nationalityGuatemala),
  guernsey(ServerRequestResponseConstants.nationalityGuernsey),
  guinea(ServerRequestResponseConstants.nationalityGuinea),
  guineaBissau(ServerRequestResponseConstants.nationalityGuineaBissau),
  guyana(ServerRequestResponseConstants.nationalityGuyana),
  haiti(ServerRequestResponseConstants.nationalityHaiti),
  heardIslandMcdonaldIslands(
      ServerRequestResponseConstants.nationalityHeardIslandMcdonaldIslands),
  holySeeVaticanCityState(
      ServerRequestResponseConstants.nationalityHolySeeVaticanCityState),
  honduras(ServerRequestResponseConstants.nationalityHonduras),
  hongKong(ServerRequestResponseConstants.nationalityHongKong),
  hungary(ServerRequestResponseConstants.nationalityHungary),
  iceland(ServerRequestResponseConstants.nationalityIceland),
  india(ServerRequestResponseConstants.nationalityIndia),
  indonesia(ServerRequestResponseConstants.nationalityIndonesia),
  iran(ServerRequestResponseConstants.nationalityIran),
  iraq(ServerRequestResponseConstants.nationalityIraq),
  ireland(ServerRequestResponseConstants.nationalityIreland),
  isleOfMan(ServerRequestResponseConstants.nationalityIsleOfMan),
  israel(ServerRequestResponseConstants.nationalityIsrael),
  italy(ServerRequestResponseConstants.nationalityItaly),
  jamaica(ServerRequestResponseConstants.nationalityJamaica),
  japan(ServerRequestResponseConstants.nationalityJapan),
  jersey(ServerRequestResponseConstants.nationalityJersey),
  jordan(ServerRequestResponseConstants.nationalityJordan),
  kazakhstan(ServerRequestResponseConstants.nationalityKazakhstan),
  kenya(ServerRequestResponseConstants.nationalityKenya),
  kiribati(ServerRequestResponseConstants.nationalityKiribati),
  korea(ServerRequestResponseConstants.nationalityKorea),
  koreaDemocraticPeoplesRepublic(
      ServerRequestResponseConstants.nationalityKoreaDemocraticPeoplesRepublic),
  kuwait(ServerRequestResponseConstants.nationalityKuwait),
  kyrgyzstan(ServerRequestResponseConstants.nationalityKyrgyzstan),
  laoPeoplesDemocraticRepublic(
      ServerRequestResponseConstants.nationalityLaoPeoplesDemocraticRepublic),
  latvia(ServerRequestResponseConstants.nationalityLatvia),
  lebanon(ServerRequestResponseConstants.nationalityLebanon),
  lesotho(ServerRequestResponseConstants.nationalityLesotho),
  liberia(ServerRequestResponseConstants.nationalityLiberia),
  libyanArabJamahiriya(
      ServerRequestResponseConstants.nationalityLibyanArabJamahiriya),
  liechtenstein(ServerRequestResponseConstants.nationalityLiechtenstein),
  lithuania(ServerRequestResponseConstants.nationalityLithuania),
  luxembourg(ServerRequestResponseConstants.nationalityLuxembourg),
  macao(ServerRequestResponseConstants.nationalityMacao),
  macedonia(ServerRequestResponseConstants.nationalityMacedonia),
  madagascar(ServerRequestResponseConstants.nationalityMadagascar),
  malawi(ServerRequestResponseConstants.nationalityMalawi),
  malaysia(ServerRequestResponseConstants.nationalityMalaysia),
  maldives(ServerRequestResponseConstants.nationalityMaldives),
  mali(ServerRequestResponseConstants.nationalityMali),
  malta(ServerRequestResponseConstants.nationalityMalta),
  marshallIslands(ServerRequestResponseConstants.nationalityMarshallIslands),
  martinique(ServerRequestResponseConstants.nationalityMartinique),
  mauritania(ServerRequestResponseConstants.nationalityMauritania),
  mauritius(ServerRequestResponseConstants.nationalityMauritius),
  mayotte(ServerRequestResponseConstants.nationalityMayotte),
  mexico(ServerRequestResponseConstants.nationalityMexico),
  micronesia(ServerRequestResponseConstants.nationalityMicronesia),
  moldova(ServerRequestResponseConstants.nationalityMoldova),
  monaco(ServerRequestResponseConstants.nationalityMonaco),
  mongolia(ServerRequestResponseConstants.nationalityMongolia),
  montenegro(ServerRequestResponseConstants.nationalityMontenegro),
  montserrat(ServerRequestResponseConstants.nationalityMontserrat),
  morocco(ServerRequestResponseConstants.nationalityMorocco),
  mozambique(ServerRequestResponseConstants.nationalityMozambique),
  myanmar(ServerRequestResponseConstants.nationalityMyanmar),
  namibia(ServerRequestResponseConstants.nationalityNamibia),
  nauru(ServerRequestResponseConstants.nationalityNauru),
  nepal(ServerRequestResponseConstants.nationalityNepal),
  netherlands(ServerRequestResponseConstants.nationalityNetherlands),
  newCaledonia(ServerRequestResponseConstants.nationalityNewCaledonia),
  newZealand(ServerRequestResponseConstants.nationalityNewZealand),
  nicaragua(ServerRequestResponseConstants.nationalityNicaragua),
  niger(ServerRequestResponseConstants.nationalityNiger),
  nigeria(ServerRequestResponseConstants.nationalityNigeria),
  niue(ServerRequestResponseConstants.nationalityNiue),
  norfolkIsland(ServerRequestResponseConstants.nationalityNorfolkIsland),
  northernMarianaIslands(
      ServerRequestResponseConstants.nationalityNorthernMarianaIslands),
  norway(ServerRequestResponseConstants.nationalityNorway),
  oman(ServerRequestResponseConstants.nationalityOman),
  pakistan(ServerRequestResponseConstants.nationalityPakistan),
  palau(ServerRequestResponseConstants.nationalityPalau),
  palestinianTerritory(
      ServerRequestResponseConstants.nationalityPalestinianTerritory),
  panama(ServerRequestResponseConstants.nationalityPanama),
  papuaNewGuinea(ServerRequestResponseConstants.nationalityPapuaNewGuinea),
  paraguay(ServerRequestResponseConstants.nationalityParaguay),
  peru(ServerRequestResponseConstants.nationalityPeru),
  philippines(ServerRequestResponseConstants.nationalityPhilippines),
  pitcairn(ServerRequestResponseConstants.nationalityPitcairn),
  poland(ServerRequestResponseConstants.nationalityPoland),
  portugal(ServerRequestResponseConstants.nationalityPortugal),
  puertoRico(ServerRequestResponseConstants.nationalityPuertoRico),
  qatar(ServerRequestResponseConstants.nationalityQatar),
  reunion(ServerRequestResponseConstants.nationalityReunion),
  romania(ServerRequestResponseConstants.nationalityRomania),
  russianFederation(
      ServerRequestResponseConstants.nationalityRussianFederation),
  rwanda(ServerRequestResponseConstants.nationalityRwanda),
  saintBarthelemy(ServerRequestResponseConstants.nationalitySaintBarthelemy),
  saintHelena(ServerRequestResponseConstants.nationalitySaintHelena),
  saintKittsAndNevis(
      ServerRequestResponseConstants.nationalitySaintKittsAndNevis),
  saintLucia(ServerRequestResponseConstants.nationalitySaintLucia),
  saintMartin(ServerRequestResponseConstants.nationalitySaintMartin),
  saintPierreAndMiquelon(
      ServerRequestResponseConstants.nationalitySaintPierreAndMiquelon),
  saintVincentAndGrenadines(
      ServerRequestResponseConstants.nationalitySaintVincentAndGrenadines),
  samoa(ServerRequestResponseConstants.nationalitySamoa),
  sanMarino(ServerRequestResponseConstants.nationalitySanMarino),
  saoTomeAndPrincipe(
      ServerRequestResponseConstants.nationalitySaoTomeAndPrincipe),
  saudiArabia(ServerRequestResponseConstants.nationalitySaudiArabia),
  senegal(ServerRequestResponseConstants.nationalitySenegal),
  serbia(ServerRequestResponseConstants.nationalitySerbia),
  seychelles(ServerRequestResponseConstants.nationalitySeychelles),
  sierraLeone(ServerRequestResponseConstants.nationalitySierraLeone),
  singapore(ServerRequestResponseConstants.nationalitySingapore),
  sintMaarten(ServerRequestResponseConstants.nationalitySintMaarten),
  slovakia(ServerRequestResponseConstants.nationalitySlovakia),
  slovenia(ServerRequestResponseConstants.nationalitySlovenia),
  solomonIslands(ServerRequestResponseConstants.nationalitySolomonIslands),
  somalia(ServerRequestResponseConstants.nationalitySomalia),
  southAfrica(ServerRequestResponseConstants.nationalitySouthAfrica),
  southGeorgiaAndSandwichIsl(
      ServerRequestResponseConstants.nationalitySouthGeorgiaAndSandwichIsl),
  spain(ServerRequestResponseConstants.nationalitySpain),
  sriLanka(ServerRequestResponseConstants.nationalitySriLanka),
  sudan(ServerRequestResponseConstants.nationalitySudan),
  suriname(ServerRequestResponseConstants.nationalitySuriname),
  svalbardAndJanMayen(
      ServerRequestResponseConstants.nationalitySvalbardAndJanMayen),
  swaziland(ServerRequestResponseConstants.nationalitySwaziland),
  sweden(ServerRequestResponseConstants.nationalitySweden),
  switzerland(ServerRequestResponseConstants.nationalitySwitzerland),
  syrianArabRepublic(
      ServerRequestResponseConstants.nationalitySyrianArabRepublic),
  taiwan(ServerRequestResponseConstants.nationalityTaiwan),
  tajikistan(ServerRequestResponseConstants.nationalityTajikistan),
  tanzania(ServerRequestResponseConstants.nationalityTanzania),
  thailand(ServerRequestResponseConstants.nationalityThailand),
  timorLeste(ServerRequestResponseConstants.nationalityTimorLeste),
  togo(ServerRequestResponseConstants.nationalityTogo),
  tokelau(ServerRequestResponseConstants.nationalityTokelau),
  tonga(ServerRequestResponseConstants.nationalityTonga),
  trinidadAndTobago(
      ServerRequestResponseConstants.nationalityTrinidadAndTobago),
  tunisia(ServerRequestResponseConstants.nationalityTunisia),
  turkey(ServerRequestResponseConstants.nationalityTurkey),
  turkmenistan(ServerRequestResponseConstants.nationalityTurkmenistan),
  tuvalu(ServerRequestResponseConstants.nationalityTuvalu),
  uganda(ServerRequestResponseConstants.nationalityUganda),
  ukraine(ServerRequestResponseConstants.nationalityUkraine),
  unitedArabEmirates(
      ServerRequestResponseConstants.nationalityUnitedArabEmirates),
  unitedKingdom(ServerRequestResponseConstants.nationalityUnitedKingdom),
  unitedStates(ServerRequestResponseConstants.nationalityUnitedStates),
  uruguay(ServerRequestResponseConstants.nationalityUruguay),
  uzbekistan(ServerRequestResponseConstants.nationalityUzbekistan),
  vanuatu(ServerRequestResponseConstants.nationalityVanuatu),
  venezuela(ServerRequestResponseConstants.nationalityVenezuela),
  vietnam(ServerRequestResponseConstants.nationalityVietnam),
  westernSahara(ServerRequestResponseConstants.nationalityWesternSahara),
  yemen(ServerRequestResponseConstants.nationalityYemen),
  zambia(ServerRequestResponseConstants.nationalityZambia),
  zimbabwe(ServerRequestResponseConstants.nationalityZimbabwe);

  const Nationality(this.serverValue);
  final String serverValue;
}

enum MediaType {
  image(ServerRequestResponseConstants.image),
  video(ServerRequestResponseConstants.video),
  document(ServerRequestResponseConstants.document);

  const MediaType(this.serverValue);

  final String serverValue;
}

enum DataType {
  boolean(ServerRequestResponseConstants.booleanDataType),
  string(ServerRequestResponseConstants.stringDataType),
  number(ServerRequestResponseConstants.numberDataType);

  const DataType(this.serverValue);
  final String serverValue;
}

enum AppThemeType {
  light(ServerRequestResponseConstants.appThemeLight),
  dark(ServerRequestResponseConstants.appThemeDark),
  system(ServerRequestResponseConstants.appThemeSystem);

  ThemeMode get getThemeMode {
    switch (AppThemeSetting.currentAppThemeType) {
      case AppThemeType.light:
        return ThemeMode.light;
      case AppThemeType.dark:
        return ThemeMode.dark;
      case AppThemeType.system:
        return ThemeMode.system;
    }
  }

  const AppThemeType(this.serverValue);
  final String serverValue;
}

enum TodoType {
  general(ServerRequestResponseConstants.general),
  course(ServerRequestResponseConstants.course),
  learnVocabulary(ServerRequestResponseConstants.learnVocabulary),
  learnGrammar(ServerRequestResponseConstants.learnGrammar),
  learnSpeaking(ServerRequestResponseConstants.learnSpeaking),
  learnListening(ServerRequestResponseConstants.learnListening),
  learnReading(ServerRequestResponseConstants.learnReading),
  learnWriting(ServerRequestResponseConstants.learnWriting),
  flashCardLearning(ServerRequestResponseConstants.flashCardLearning),
  quizLearning(ServerRequestResponseConstants.quizLearning),
  matchingLearning(ServerRequestResponseConstants.matchingLearning),
  pronunciationLearning(ServerRequestResponseConstants.pronunciationLearning);

  const TodoType(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.general:
        return TodoType.general;
      case ServerRequestResponseConstants.course:
        return TodoType.course;
      case ServerRequestResponseConstants.learnVocabulary:
        return TodoType.learnVocabulary;
      case ServerRequestResponseConstants.learnGrammar:
        return TodoType.learnGrammar;
      case ServerRequestResponseConstants.learnSpeaking:
        return TodoType.learnSpeaking;
      case ServerRequestResponseConstants.learnListening:
        return TodoType.learnListening;
      case ServerRequestResponseConstants.learnReading:
        return TodoType.learnReading;
      case ServerRequestResponseConstants.learnWriting:
        return TodoType.learnWriting;
      case ServerRequestResponseConstants.flashCardLearning:
        return TodoType.flashCardLearning;
      case ServerRequestResponseConstants.quizLearning:
        return TodoType.quizLearning;
      case ServerRequestResponseConstants.matchingLearning:
        return TodoType.matchingLearning;
      case ServerRequestResponseConstants.pronunciationLearning:
        return TodoType.pronunciationLearning;
      default:
        return TodoType.general;
    }
  }

  String get todoTypeName {
    switch (this) {
      case TodoType.general:
        return S.current.general;
      case TodoType.course:
        return S.current.course;
      case TodoType.learnVocabulary:
        return S.current.learnVocabulary;
      case TodoType.learnGrammar:
        return S.current.learnGrammar;
      case TodoType.learnSpeaking:
        return S.current.learnSpeaking;
      case TodoType.learnListening:
        return S.current.learnListening;
      case TodoType.learnReading:
        return S.current.learnReading;
      case TodoType.learnWriting:
        return S.current.learnWriting;
      case TodoType.flashCardLearning:
        return S.current.flashCardLearning;
      case TodoType.quizLearning:
        return S.current.quizLearning;
      case TodoType.matchingLearning:
        return S.current.matchingLearning;
      case TodoType.pronunciationLearning:
        return S.current.pronunciationLearning;
    }
  }
}

enum TodoPriority {
  low(ServerRequestResponseConstants.low),
  medium(ServerRequestResponseConstants.medium),
  high(ServerRequestResponseConstants.high),
  urgent(ServerRequestResponseConstants.urgent);

  const TodoPriority(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.low:
        return TodoPriority.low;
      case ServerRequestResponseConstants.medium:
        return TodoPriority.medium;
      case ServerRequestResponseConstants.high:
        return TodoPriority.high;
      case ServerRequestResponseConstants.urgent:
        return TodoPriority.urgent;
      default:
        return TodoPriority.low;
    }
  }

  String get priorityName {
    switch (this) {
      case TodoPriority.low:
        return S.current.lowPriority;
      case TodoPriority.medium:
        return S.current.mediumPriority;
      case TodoPriority.high:
        return S.current.highPriority;
      case TodoPriority.urgent:
        return S.current.urgentPriority;
    }
  }
}

enum LanguageLevel {
  all(ServerRequestResponseConstants.all),
  a1(ServerRequestResponseConstants.a1),
  a2(ServerRequestResponseConstants.a2),
  b1(ServerRequestResponseConstants.b1),
  b2(ServerRequestResponseConstants.b2),
  c1(ServerRequestResponseConstants.c1),
  c2(ServerRequestResponseConstants.c2);

  const LanguageLevel(this.serverValue);
  final String serverValue;

  static fromServerValue(String? serverValue) {
    switch (serverValue) {
      case ServerRequestResponseConstants.a1:
        return LanguageLevel.a1;
      case ServerRequestResponseConstants.a2:
        return LanguageLevel.a2;
      case ServerRequestResponseConstants.b1:
        return LanguageLevel.b1;
      case ServerRequestResponseConstants.b2:
        return LanguageLevel.b2;
      case ServerRequestResponseConstants.c1:
        return LanguageLevel.c1;
      case ServerRequestResponseConstants.c2:
        return LanguageLevel.c2;
      default:
        return LanguageLevel.a1;
    }
  }

  String get levelName {
    switch (this) {
      case LanguageLevel.all:
        return S.current.all;
      case LanguageLevel.a1:
        return ServerRequestResponseConstants.a1;
      case LanguageLevel.a2:
        return ServerRequestResponseConstants.a2;
      case LanguageLevel.b1:
        return ServerRequestResponseConstants.b1;
      case LanguageLevel.b2:
        return ServerRequestResponseConstants.b2;
      case LanguageLevel.c1:
        return ServerRequestResponseConstants.c1;
      case LanguageLevel.c2:
        return ServerRequestResponseConstants.c2;
    }
  }
}
