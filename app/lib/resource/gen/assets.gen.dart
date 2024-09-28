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

  /// File path: assets/icons/ic_facebook.svg
  SvgGenImage get icFacebook => const SvgGenImage('assets/icons/ic_facebook.svg');

  /// File path: assets/icons/ic_quit.svg
  SvgGenImage get icQuit => const SvgGenImage('assets/icons/ic_quit.svg');

  /// List of all assets
  List<SvgGenImage> get values => [icArrowLeft, icFacebook, icQuit];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
