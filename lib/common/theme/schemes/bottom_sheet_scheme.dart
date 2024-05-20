import 'package:accelerate_mobile_app/common/theme/color/accelerate_colors.dart';
import 'package:flutter/material.dart';

class AccelerateBottomSheetScheme {
  AccelerateBottomSheetScheme(
      {required this.titleTextColor,
      required this.descriptionTextColor,
      required this.backgroundColor,
      required this.iconDangerColor,
      required this.iconInfoColor});

  static AccelerateBottomSheetScheme light() {
    return AccelerateBottomSheetScheme(
      titleTextColor: AccelerateColors.black,
      descriptionTextColor: AccelerateColors.black.withOpacity(0.7),
      backgroundColor: AccelerateColors.white,
      iconDangerColor: AccelerateColors.semanticRed,
      iconInfoColor: AccelerateColors.primary,
    );
  }

  static AccelerateBottomSheetScheme dark() {
    return _AccelerateBottomSheetScheme(
      titleTextColor: AccelerateColors.white,
      descriptionTextColor: AccelerateColors.white.withOpacity(0.8),
      backgroundColor: AccelerateColors.backgroundDark,
      iconDangerColor: AccelerateColors.semanticRed,
      iconInfoColor: AccelerateColors.primary,
    );
  }

  final Color titleTextColor;
  final Color descriptionTextColor;
  final Color backgroundColor;
  final Color iconDangerColor;
  final Color iconInfoColor;
}

class _AccelerateBottomSheetScheme extends AccelerateBottomSheetScheme {
  _AccelerateBottomSheetScheme(
      {required super.titleTextColor,
      required super.descriptionTextColor,
      required super.backgroundColor,
      required super.iconDangerColor,
      required super.iconInfoColor});
}
