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

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/HadithActive.svg
  SvgGenImage get hadithActive =>
      const SvgGenImage('assets/icons/HadithActive.svg');

  /// File path: assets/icons/HadithInActive.svg
  SvgGenImage get hadithInActive =>
      const SvgGenImage('assets/icons/HadithInActive.svg');

  /// File path: assets/icons/QuraanActive.svg
  SvgGenImage get quraanActive =>
      const SvgGenImage('assets/icons/QuraanActive.svg');

  /// File path: assets/icons/QuraanInActive.svg
  SvgGenImage get quraanInActive =>
      const SvgGenImage('assets/icons/QuraanInActive.svg');

  /// File path: assets/icons/RadioActive.svg
  SvgGenImage get radioActive =>
      const SvgGenImage('assets/icons/RadioActive.svg');

  /// File path: assets/icons/RadioInActive.svg
  SvgGenImage get radioInActive =>
      const SvgGenImage('assets/icons/RadioInActive.svg');

  /// File path: assets/icons/SebhaActive.svg
  SvgGenImage get sebhaActive =>
      const SvgGenImage('assets/icons/SebhaActive.svg');

  /// File path: assets/icons/SebhaInActive.svg
  SvgGenImage get sebhaInActive =>
      const SvgGenImage('assets/icons/SebhaInActive.svg');

  /// File path: assets/icons/TimeActive.svg
  SvgGenImage get timeActive =>
      const SvgGenImage('assets/icons/TimeActive.svg');

  /// File path: assets/icons/TimeInActive.svg
  SvgGenImage get timeInActive =>
      const SvgGenImage('assets/icons/TimeInActive.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        hadithActive,
        hadithInActive,
        quraanActive,
        quraanInActive,
        radioActive,
        radioInActive,
        sebhaActive,
        sebhaInActive,
        timeActive,
        timeInActive
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/HadithBackground.png
  AssetGenImage get hadithBackground =>
      const AssetGenImage('assets/images/HadithBackground.png');

  /// File path: assets/images/QuraanBackground.png
  AssetGenImage get quraanBackground =>
      const AssetGenImage('assets/images/QuraanBackground.png');

  /// File path: assets/images/RadioBackground.png
  AssetGenImage get radioBackground =>
      const AssetGenImage('assets/images/RadioBackground.png');

  /// File path: assets/images/SebhaBackground.png
  AssetGenImage get sebhaBackground =>
      const AssetGenImage('assets/images/SebhaBackground.png');

  /// File path: assets/images/Splash-Logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/Splash-Logo.png');

  /// File path: assets/images/SplashScreenBackground.png
  AssetGenImage get splashScreenBackground =>
      const AssetGenImage('assets/images/SplashScreenBackground.png');

  /// File path: assets/images/TimeBackground.png
  AssetGenImage get timeBackground =>
      const AssetGenImage('assets/images/TimeBackground.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        hadithBackground,
        quraanBackground,
        radioBackground,
        sebhaBackground,
        splashLogo,
        splashScreenBackground,
        timeBackground
      ];
}

class Assets {
  const Assets._();

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
