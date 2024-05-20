import 'package:accelerate_mobile_app/common/theme/color/accelerate_colors.dart';
import 'package:flutter/material.dart';

class AccelerateInputScheme {
  AccelerateInputScheme(
      {required this.errorColor,
      required this.focusBorderColor,
      required this.textColor,
      required this.backgroundColor,
      required this.focusBackgroundColor,
      required this.disableTextColor,
      required this.affixIconColor,
      required this.iconColor,
      required this.disabledAffixIconColor,
      required this.disabledIconColor,
      required this.dividerColor,
      required this.counterColor,
      required this.bottomSheetInputColor});

  static AccelerateInputScheme light() {
    return AccelerateInputScheme(
        errorColor: AccelerateColors.inputErrorBorderColor,
        focusBorderColor: AccelerateColors.inputActiveBorderColor,
        textColor: AccelerateColors.black,
        backgroundColor: AccelerateColors.grey.shade50,
        focusBackgroundColor: AccelerateColors.inputFillColor,
        disableTextColor: AccelerateColors.grey.shade400,
        affixIconColor: AccelerateColors.black.shade600,
        disabledAffixIconColor: AccelerateColors.black.shade800,
        iconColor: AccelerateColors.black.withOpacity(0.4),
        disabledIconColor: AccelerateColors.black.withOpacity(0.2),
        dividerColor: AccelerateColors.grey.shade600,
        counterColor: AccelerateColors.black.shade600,
        bottomSheetInputColor: AccelerateColors.white.shade50);
  }

  static AccelerateInputScheme dark() {
    return AccelerateInputScheme(
        errorColor: AccelerateColors.inputErrorBorderColor,
        focusBorderColor: AccelerateColors.inputActiveBorderColorDark,
        textColor: AccelerateColors.white,
        backgroundColor: AccelerateColors.inputFillColorDark,
        focusBackgroundColor: AccelerateColors.inputFillColorDark,
        disableTextColor: AccelerateColors.white.withOpacity(0.3),
        affixIconColor: AccelerateColors.white.withOpacity(0.6),
        disabledAffixIconColor: AccelerateColors.white.withOpacity(0.3),
        iconColor: AccelerateColors.white.withOpacity(0.5),
        disabledIconColor: AccelerateColors.white.withOpacity(0.3),
        dividerColor: AccelerateColors.white.withOpacity(0.1),
        counterColor: AccelerateColors.white.withOpacity(0.3),
        bottomSheetInputColor: AccelerateColors.white.withOpacity(0.2));
  }

  final Color errorColor;
  final Color focusBorderColor;
  final Color textColor;
  final Color backgroundColor;
  final Color bottomSheetInputColor;
  final Color focusBackgroundColor;
  final Color disableTextColor;
  final Color affixIconColor;
  final Color disabledAffixIconColor;
  final Color iconColor;
  final Color disabledIconColor;
  final Color dividerColor;
  final Color counterColor;

  AccelerateInputScheme copyWith({
    Color? errorColor,
    Color? focusBorderColor,
    Color? textColor,
    Color? backgroundColor,
    Color? focusBackgroundColor,
    Color? disableTextColor,
    Color? affixIconColor,
    Color? disabledAffixIconColor,
    Color? iconColor,
    Color? disabledIconColor,
    Color? dividerColor,
    Color? counterColor,
    Color? bottomSheetInputColor,
  }) {
    return AccelerateInputScheme(
        errorColor: errorColor ?? this.errorColor,
        focusBorderColor: focusBorderColor ?? this.focusBorderColor,
        textColor: textColor ?? this.textColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        focusBackgroundColor: focusBackgroundColor ?? this.focusBackgroundColor,
        disableTextColor: disableTextColor ?? this.disableTextColor,
        affixIconColor: affixIconColor ?? this.affixIconColor,
        disabledAffixIconColor:
            disabledAffixIconColor ?? this.disabledAffixIconColor,
        iconColor: iconColor ?? this.iconColor,
        disabledIconColor: disabledIconColor ?? this.disabledIconColor,
        dividerColor: dividerColor ?? this.dividerColor,
        counterColor: counterColor ?? this.counterColor,
        bottomSheetInputColor:
            bottomSheetInputColor ?? this.bottomSheetInputColor);
  }
}
