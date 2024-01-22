/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/OpenSans-Bold.ttf
  String get openSansBold => 'assets/fonts/OpenSans-Bold.ttf';

  /// File path: assets/fonts/OpenSans-BoldItalic.ttf
  String get openSansBoldItalic => 'assets/fonts/OpenSans-BoldItalic.ttf';

  /// File path: assets/fonts/OpenSans-ExtraBold.ttf
  String get openSansExtraBold => 'assets/fonts/OpenSans-ExtraBold.ttf';

  /// File path: assets/fonts/OpenSans-ExtraBoldItalic.ttf
  String get openSansExtraBoldItalic =>
      'assets/fonts/OpenSans-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/OpenSans-Italic.ttf
  String get openSansItalic => 'assets/fonts/OpenSans-Italic.ttf';

  /// File path: assets/fonts/OpenSans-Light.ttf
  String get openSansLight => 'assets/fonts/OpenSans-Light.ttf';

  /// File path: assets/fonts/OpenSans-LightItalic.ttf
  String get openSansLightItalic => 'assets/fonts/OpenSans-LightItalic.ttf';

  /// File path: assets/fonts/OpenSans-Regular.ttf
  String get openSansRegular => 'assets/fonts/OpenSans-Regular.ttf';

  /// File path: assets/fonts/OpenSans-Semibold.ttf
  String get openSansSemibold => 'assets/fonts/OpenSans-Semibold.ttf';

  /// File path: assets/fonts/OpenSans-SemiboldItalic.ttf
  String get openSansSemiboldItalic =>
      'assets/fonts/OpenSans-SemiboldItalic.ttf';

  /// List of all assets
  List<String> get values => [
        openSansBold,
        openSansBoldItalic,
        openSansExtraBold,
        openSansExtraBoldItalic,
        openSansItalic,
        openSansLight,
        openSansLightItalic,
        openSansRegular,
        openSansSemibold,
        openSansSemiboldItalic
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
