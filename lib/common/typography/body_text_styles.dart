import 'package:accelerate_mobile_app/common/gen/fonts.gen.dart';
import 'package:accelerate_mobile_app/common/theme/size_config.dart';
import 'package:flutter/material.dart';

class TextBodyStyle {
  //================= Large ==================//
  TextStyle get large => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(15),
      height: 21.75.toLineHeight(15));

  TextStyle get medium => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(14),
      height: 17.64.toLineHeight(14));

  TextStyle get mediumBold => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(14),
      height: 17.64.toLineHeight(14));

  TextStyle get small => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(13),
      height: 16.38.toLineHeight(13));

  TextStyle get extraSmall => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(12),
      height: 15.12.toLineHeight(12));

  TextStyle get buttonText => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(14),
      height: 20.3.toLineHeight(14));

  TextStyle get infoText => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(12),
      height: 14.64.toLineHeight(12));
}
