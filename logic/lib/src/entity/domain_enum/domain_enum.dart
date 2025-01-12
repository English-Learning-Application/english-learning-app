import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:services/services.dart';

enum InitialAppRoute {
  login,
  home,
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

  @override
  String toString() => languageName;
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
  month(ServerRequestResponseConstants.month),
  year(ServerRequestResponseConstants.year);

  const DateLengthUnit(this.serverValue);
  final String serverValue;
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
