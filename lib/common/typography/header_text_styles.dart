import 'package:accelerate_mobile_app/common/gen/fonts.gen.dart';
import 'package:accelerate_mobile_app/common/theme/size_config.dart';
import 'package:flutter/material.dart';

class TextHeaderStyle {
//================== PageHeader ==================//
  TextStyle get pageHeader1 => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      fontSize: SizeConfig.pxToTextSize(26),
      height: 31.72.toLineHeight(26));

  TextStyle get largeHeader => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.2,
      fontSize: SizeConfig.pxToTextSize(22),
      height: 27.72.toLineHeight(22));

  TextStyle get mediumHeader => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.1,
      fontSize: SizeConfig.pxToTextSize(16),
      height: 20.16.toLineHeight(16));

  TextStyle get smallHeader => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.2,
      fontSize: SizeConfig.pxToTextSize(14),
      height: 17.64.toLineHeight(14));

  TextStyle get pageHeader2 => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      fontSize: SizeConfig.pxToTextSize(24),
      height: 29.28.toLineHeight(24));

  //================== PageTitle ==================//

  TextStyle get pageTitle1 => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.3,
      fontSize: SizeConfig.pxToTextSize(20),
      height: 24.40.toLineHeight(20));

  TextStyle get pageTitle2 => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.30,
      fontSize: SizeConfig.pxToTextSize(18),
      height: 21.96.toLineHeight(18));

  //================== Small ==================//

  TextStyle get smallNumber => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.30,
      fontSize: SizeConfig.pxToTextSize(13),
      height: 16.3.toLineHeight(13));

  //================== medium ==================//
  TextStyle get mediumNumber => TextStyle(
      fontFamily: AccelerateFonts.plusJakartaSans,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      fontSize: SizeConfig.pxToTextSize(18),
      height: 22.68.toLineHeight(18));
}
