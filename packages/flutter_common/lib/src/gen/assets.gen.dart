/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_down.svg
  SvgGenImage get icArrowDown =>
      const SvgGenImage('assets/icons/ic_arrow_down.svg');

  /// File path: assets/icons/ic_back.svg
  SvgGenImage get icBack => const SvgGenImage('assets/icons/ic_back.svg');

  /// File path: assets/icons/ic_background_signin.png
  AssetGenImage get icBackgroundSignin =>
      const AssetGenImage('assets/icons/ic_background_signin.png');

  /// File path: assets/icons/ic_calendar.png
  AssetGenImage get icCalendarPng =>
      const AssetGenImage('assets/icons/ic_calendar.png');

  /// File path: assets/icons/ic_calendar.svg
  SvgGenImage get icCalendarSvg =>
      const SvgGenImage('assets/icons/ic_calendar.svg');

  /// File path: assets/icons/ic_credit_card.svg
  SvgGenImage get icCreditCard =>
      const SvgGenImage('assets/icons/ic_credit_card.svg');

  /// File path: assets/icons/ic_email.svg
  SvgGenImage get icEmail => const SvgGenImage('assets/icons/ic_email.svg');

  /// File path: assets/icons/ic_error.svg
  SvgGenImage get icError => const SvgGenImage('assets/icons/ic_error.svg');

  /// File path: assets/icons/ic_even.png
  AssetGenImage get icEven => const AssetGenImage('assets/icons/ic_even.png');

  /// File path: assets/icons/ic_logo.png
  AssetGenImage get icLogo => const AssetGenImage('assets/icons/ic_logo.png');

  /// File path: assets/icons/ic_open_eye.svg
  SvgGenImage get icOpenEye =>
      const SvgGenImage('assets/icons/ic_open_eye.svg');

  /// File path: assets/icons/ic_phone.svg
  SvgGenImage get icPhone => const SvgGenImage('assets/icons/ic_phone.svg');

  /// File path: assets/icons/ic_s.png
  AssetGenImage get icS => const AssetGenImage('assets/icons/ic_s.png');

  /// File path: assets/icons/ic_show_slinger.png
  AssetGenImage get icShowSlinger =>
      const AssetGenImage('assets/icons/ic_show_slinger.png');

  /// File path: assets/icons/ic_show_slinger_dark.png
  AssetGenImage get icShowSlingerDark =>
      const AssetGenImage('assets/icons/ic_show_slinger_dark.png');

  /// File path: assets/icons/ic_success.svg
  SvgGenImage get icSuccess => const SvgGenImage('assets/icons/ic_success.svg');

  /// File path: assets/icons/ic_ticked.svg
  SvgGenImage get icTicked => const SvgGenImage('assets/icons/ic_ticked.svg');

  /// File path: assets/icons/ic_warning.svg
  SvgGenImage get icWarning => const SvgGenImage('assets/icons/ic_warning.svg');

  /// File path: assets/icons/splash_video.mp4
  String get splashVideo => 'assets/icons/splash_video.mp4';

  /// List of all assets
  List<dynamic> get values => [
        icArrowDown,
        icBack,
        icBackgroundSignin,
        icCalendarPng,
        icCalendarSvg,
        icCreditCard,
        icEmail,
        icError,
        icEven,
        icLogo,
        icOpenEye,
        icPhone,
        icS,
        icShowSlinger,
        icShowSlingerDark,
        icSuccess,
        icTicked,
        icWarning,
        splashVideo
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
