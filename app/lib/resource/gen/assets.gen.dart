/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Manrope-Bold.ttf
  String get manropeBold => 'assets/fonts/Manrope-Bold.ttf';

  /// File path: assets/fonts/Manrope-ExtraBold.ttf
  String get manropeExtraBold => 'assets/fonts/Manrope-ExtraBold.ttf';

  /// File path: assets/fonts/Manrope-ExtraLight.ttf
  String get manropeExtraLight => 'assets/fonts/Manrope-ExtraLight.ttf';

  /// File path: assets/fonts/Manrope-Light.ttf
  String get manropeLight => 'assets/fonts/Manrope-Light.ttf';

  /// File path: assets/fonts/Manrope-Medium.ttf
  String get manropeMedium => 'assets/fonts/Manrope-Medium.ttf';

  /// File path: assets/fonts/Manrope-Regular.ttf
  String get manropeRegular => 'assets/fonts/Manrope-Regular.ttf';

  /// File path: assets/fonts/Manrope-SemiBold.ttf
  String get manropeSemiBold => 'assets/fonts/Manrope-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [manropeBold, manropeExtraBold, manropeExtraLight, manropeLight, manropeMedium, manropeRegular, manropeSemiBold];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_left.svg
  SvgGenImage get icArrowLeft => const SvgGenImage('assets/icons/ic_arrow_left.svg');

  /// File path: assets/icons/ic_england.svg
  SvgGenImage get icEngland => const SvgGenImage('assets/icons/ic_england.svg');

  /// File path: assets/icons/ic_england_landmark.svg
  SvgGenImage get icEnglandLandmark => const SvgGenImage('assets/icons/ic_england_landmark.svg');

  /// File path: assets/icons/ic_eye_close.svg
  SvgGenImage get icEyeClose => const SvgGenImage('assets/icons/ic_eye_close.svg');

  /// File path: assets/icons/ic_eye_open.svg
  SvgGenImage get icEyeOpen => const SvgGenImage('assets/icons/ic_eye_open.svg');

  /// File path: assets/icons/ic_facebook.svg
  SvgGenImage get icFacebook => const SvgGenImage('assets/icons/ic_facebook.svg');

  /// File path: assets/icons/ic_france.svg
  SvgGenImage get icFrance => const SvgGenImage('assets/icons/ic_france.svg');

  /// File path: assets/icons/ic_france_landmark.svg
  SvgGenImage get icFranceLandmark => const SvgGenImage('assets/icons/ic_france_landmark.svg');

  /// File path: assets/icons/ic_google.svg
  SvgGenImage get icGoogle => const SvgGenImage('assets/icons/ic_google.svg');

  /// File path: assets/icons/ic_grammar.svg
  SvgGenImage get icGrammar => const SvgGenImage('assets/icons/ic_grammar.svg');

  /// File path: assets/icons/ic_listening.svg
  SvgGenImage get icListening => const SvgGenImage('assets/icons/ic_listening.svg');

  /// File path: assets/icons/ic_quit.svg
  SvgGenImage get icQuit => const SvgGenImage('assets/icons/ic_quit.svg');

  /// File path: assets/icons/ic_reading.svg
  SvgGenImage get icReading => const SvgGenImage('assets/icons/ic_reading.svg');

  /// File path: assets/icons/ic_speaking.svg
  SvgGenImage get icSpeaking => const SvgGenImage('assets/icons/ic_speaking.svg');

  /// File path: assets/icons/ic_vietnam.svg
  SvgGenImage get icVietnam => const SvgGenImage('assets/icons/ic_vietnam.svg');

  /// File path: assets/icons/ic_vietnam_landmark.svg
  SvgGenImage get icVietnamLandmark => const SvgGenImage('assets/icons/ic_vietnam_landmark.svg');

  /// File path: assets/icons/ic_vocabulary.svg
  SvgGenImage get icVocabulary => const SvgGenImage('assets/icons/ic_vocabulary.svg');

  /// File path: assets/icons/ic_writing.svg
  SvgGenImage get icWriting => const SvgGenImage('assets/icons/ic_writing.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icArrowLeft,
        icEngland,
        icEnglandLandmark,
        icEyeClose,
        icEyeOpen,
        icFacebook,
        icFrance,
        icFranceLandmark,
        icGoogle,
        icGrammar,
        icListening,
        icQuit,
        icReading,
        icSpeaking,
        icVietnam,
        icVietnamLandmark,
        icVocabulary,
        icWriting
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon.png
  AssetGenImage get appIcon => const AssetGenImage('assets/images/app_icon.png');

  /// File path: assets/images/onboard-01.png
  AssetGenImage get onboard01 => const AssetGenImage('assets/images/onboard-01.png');

  /// File path: assets/images/onboard-02.png
  AssetGenImage get onboard02 => const AssetGenImage('assets/images/onboard-02.png');

  /// File path: assets/images/onboard-03.png
  AssetGenImage get onboard03 => const AssetGenImage('assets/images/onboard-03.png');

  /// File path: assets/images/onboard-04.png
  AssetGenImage get onboard04 => const AssetGenImage('assets/images/onboard-04.png');

  /// List of all assets
  List<AssetGenImage> get values => [appIcon, onboard01, onboard02, onboard03, onboard04];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
