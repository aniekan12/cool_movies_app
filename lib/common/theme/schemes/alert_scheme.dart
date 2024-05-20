import 'package:accelerate_mobile_app/common/theme/color/accelerate_colors.dart';
import 'package:flutter/material.dart';

class AccelerateAlertScheme {
  AccelerateAlertScheme({
    required this.successTextColor,
    required this.warningTextColor,
    required this.dangerTextColor,
    required this.infoTextColor,
    required this.successBackgroundColor,
    required this.warningBackgroundColor,
    required this.dangerBackgroundColor,
    required this.infoBackgroundColor,
    required this.successIconColor,
    required this.warningIconColor,
    required this.dangerIconColor,
    required this.infoIconColor,
  });

  static AccelerateAlertScheme light() {
    return AccelerateAlertScheme(
      successTextColor: AccelerateColors.green,
      warningTextColor: AccelerateColors.warningYellow,
      dangerTextColor: AccelerateColors.errorRed,
      infoTextColor: AccelerateColors.deepBlue,
      successBackgroundColor: AccelerateColors.greenSupport,
      warningBackgroundColor: AccelerateColors.yellowSupport,
      dangerBackgroundColor: AccelerateColors.errorBackground,
      infoBackgroundColor: AccelerateColors.deepBlue,
      successIconColor: AccelerateColors.green,
      warningIconColor: AccelerateColors.warningYellow,
      dangerIconColor: AccelerateColors.errorRed,
      infoIconColor: AccelerateColors.deepBlue,
    );
  }

  static AccelerateAlertScheme dark() {
    return AccelerateAlertScheme(
      successTextColor: AccelerateColors.green,
      warningTextColor: AccelerateColors.warningYellow,
      dangerTextColor: AccelerateColors.errorRed,
      infoTextColor: AccelerateColors.deepBlue,
      successBackgroundColor: AccelerateColors.green,
      warningBackgroundColor: AccelerateColors.warningYellow,
      dangerBackgroundColor: AccelerateColors.errorRed,
      infoBackgroundColor: AccelerateColors.deepBlue,
      successIconColor: AccelerateColors.green,
      warningIconColor: AccelerateColors.warningYellow,
      dangerIconColor: AccelerateColors.errorRed,
      infoIconColor: AccelerateColors.deepBlue,
    );
  }

  final Color successTextColor;
  final Color warningTextColor;
  final Color dangerTextColor;
  final Color infoTextColor;

  final Color successBackgroundColor;
  final Color warningBackgroundColor;
  final Color dangerBackgroundColor;
  final Color infoBackgroundColor;

  final Color successIconColor;
  final Color warningIconColor;
  final Color dangerIconColor;
  final Color infoIconColor;
}
