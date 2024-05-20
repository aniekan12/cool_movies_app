import 'package:accelerate_mobile_app/common/gen/fonts.gen.dart';
import 'package:accelerate_mobile_app/common/theme/color/accelerate_colors.dart';
import 'package:accelerate_mobile_app/common/theme/schemes/alert_scheme.dart';
import 'package:accelerate_mobile_app/common/theme/schemes/bottom_sheet_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'schemes/input_scheme.dart';
import 'typography/text_styles.dart';

enum ThemePreference {
  dark,
  light,
  auto;

  ThemeMode get themeMode => this == ThemePreference.light
      ? ThemeMode.light
      : this == auto
          ? ThemeMode.system
          : ThemeMode.dark;
}

typedef ColorBuilder = Color Function(BuildContext context);

class ColorProvider extends InheritedWidget {
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final ThemePreference mode;
  final VoidCallback toggleThemeMode;
  final void Function(ThemePreference mode) setThemeMode;

  const ColorProvider(
      {Key? key,
      required this.lightTheme,
      required this.darkTheme,
      required this.mode,
      required this.toggleThemeMode,
      required this.setThemeMode,
      required Widget child})
      : super(key: key, child: child);

  ColorScheme get currentScheme => mode == ThemePreference.light
      ? lightTheme.colorScheme
      : darkTheme.colorScheme;

  MaterialColor get primaryColor => mode == ThemePreference.light
      ? AccelerateColors.primary
      : AccelerateColors.primary;

  Color get containerColor => currentScheme.primaryContainer;

  MaterialColor get errorColor => mode == ThemePreference.light
      ? AccelerateColors.primary
      : AccelerateColors.primary;

  Color get inActiveColor => mode == ThemePreference.light
      ? AccelerateColors.neutral
      : AccelerateColors.primary.shade600;

  Color get successColor => mode == ThemePreference.light
      ? AccelerateColors.successGreen
      : AccelerateColors.successGreen;

  Color get greyBackground => mode == ThemePreference.light
      ? AccelerateColors.grey
      : AccelerateColors.black;

  Color get primaryAlternate1 => mode == ThemePreference.light
      ? AccelerateColors.primaryAlternate1.shade500
      : AccelerateColors.primaryAlternate1.withAlpha(1);

  Color get alternateSupport1 => mode == ThemePreference.light
      ? AccelerateColors.alternateSupport1
      : AccelerateColors.alternateSupport1.shade900;

  MaterialColor get disabledColor => mode == ThemePreference.light
      ? AccelerateColors.black
      : AccelerateColors.primary;

  Color get buttonTextPrimary => mode == ThemePreference.light
      ? AccelerateColors.white
      : AccelerateColors.white;

  Color get iconColor => mode == ThemePreference.light
      ? AccelerateColors.black.shade500
      : AccelerateColors.white;

  Color get iconFillColor => mode == ThemePreference.light
      ? AccelerateColors.primary
      : AccelerateColors.primary;

  Color get buttonPressedColor => mode == ThemePreference.light
      ? AccelerateColors.primary.withOpacity(1)
      : AccelerateColors.primary.withOpacity(0.3);

  Color get textColor => mode == ThemePreference.light
      ? AccelerateColors.black
      : AccelerateColors.white;

  Color get cardTitleColor => mode == ThemePreference.light
      ? AccelerateColors.headerText
      : AccelerateColors.white;

  Color get cardSubTitleColor => mode == ThemePreference.light
      ? AccelerateColors.bodyText
      : AccelerateColors.white;

  Color get subtitleColor => mode == ThemePreference.light
      ? AccelerateColors.inputText
      : AccelerateColors.inputText.shade200;

  Color get success => AccelerateColors.successGreen;

  Color get backgroundDefault => mode == ThemePreference.light
      ? AccelerateColors.white
      : AccelerateColors.black.shade500;

  Color get backgroundColor => mode == ThemePreference.light
      ? AccelerateColors.greyBackground.shade400
      : AccelerateColors.black;

  Color get cardColor => mode == ThemePreference.light
      ? AccelerateColors.white
      : AccelerateColors.grey.shade800;

  AccelerateInputScheme get inputScheme => mode == ThemePreference.light
      ? AccelerateInputScheme.light()
      : AccelerateInputScheme.dark();

  // CardColorScheme get cardScheme => mode == ThemePreference.light
  //     ? CardColorScheme.light()
  //     : CardColorScheme.dark();

  Color get subtitleTextColor => mode == ThemePreference.light
      ? const Color(0xFF75808A)
      : AccelerateColors.white.withOpacity(0.6);

  // Color get cardTitleColor => mode == ThemePreference.light
  //     ? AccelerateColors.black.shade600
  //     : AccelerateColors.white.withOpacity(0.6);

  Color get dialogBarrierColor => mode == ThemePreference.light
      ? AccelerateColors.black
      : AccelerateColors.black;

  Color get iconBackgroundColor => mode == ThemePreference.light
      ? AccelerateColors.primary.shade50
      : AccelerateColors.primary.shade200;

  AccelerateBottomSheetScheme get bottomSheetScheme =>
      mode == ThemePreference.light
          ? AccelerateBottomSheetScheme.light()
          : AccelerateBottomSheetScheme.dark();

  AccelerateAlertScheme get alertScheme => mode == ThemePreference.light
      ? AccelerateAlertScheme.light()
      : AccelerateAlertScheme.dark();

  Color get greyText => mode == ThemePreference.light
      ? const Color(0xFF505050)
      : const Color(0xFF505050);

  Color get horizontalStepperInactiveColor => mode == ThemePreference.light
      ? AccelerateColors.grey.shade50
      : AccelerateColors.grey.shade800;

  Color get shadowColor => mode == ThemePreference.light
      ? Colors.grey.withOpacity(0.08)
      : AccelerateColors.black.shade800.withOpacity(0.5);

  Color get containerFade => mode == ThemePreference.light
      ? const Color(0xFFFAFAFA)
      : AccelerateColors.black.shade800.withOpacity(0.5);

  // Color get iconDisableBackgroundColor => mode == ThemePreference.light
  //     ? AccelerateColors.tertiaryDarkBlue.opacity5
  //     : AccelerateColors.white.opacity20;
  //
  // Color get iconDisableColor => mode == ThemePreference.light
  //     ? AccelerateColors.tertiaryDarkBlue.opacity50
  //     : AccelerateColors.white.opacity60;

  static ColorProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorProvider>()!;
  }

  Color get shimmerBackground => mode == ThemePreference.light
      ? const Color(0xFFE2E3E6)
      : const Color(0xFF121F36);

  @override
  bool updateShouldNotify(covariant ColorProvider oldWidget) {
    return oldWidget.mode != mode;
  }

  static ThemeData light() {
    final tabBarThemeLight = TabBarTheme(
      unselectedLabelStyle: AccelerateTextStyle.body.small,
      labelStyle: AccelerateTextStyle.body.small,
      labelColor: AccelerateColors.primary,
      labelPadding: const EdgeInsets.symmetric(vertical: 0),
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1), topRight: Radius.circular(1)),
        borderSide: BorderSide(color: AccelerateColors.primary, width: 1.0),
        insets: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
      ),
    );

    return ThemeData(
      useMaterial3: false,
      tabBarTheme: tabBarThemeLight,
      fontFamily: AccelerateFonts.plusJakartaSans,
      primaryColor: AccelerateColors.primary,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: const IconThemeData(color: AccelerateColors.black, size: 22),
        backgroundColor: AccelerateColors.white,
        titleTextStyle: AccelerateTextStyle.body.small
            .copyWith(color: AccelerateColors.black),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AccelerateColors.grey.shade50,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
      ),
      scaffoldBackgroundColor: AccelerateColors.white,
      colorScheme: ColorScheme.light(
          primary: AccelerateColors.primary,
          primaryContainer: AccelerateColors.primary,
          error: AccelerateColors.semanticRed,
          background: AccelerateColors.grey.shade50,
          surface: AccelerateColors.black.shade700,
          onPrimary: AccelerateColors.white,
          onBackground: AccelerateColors.black,
          onSurface: AccelerateColors.black,
          onError: AccelerateColors.white,
          outline: AccelerateColors.primary),
    );
  }

  static ThemeData dark() {
    final tabBarThemeLight = TabBarTheme(
      unselectedLabelStyle: AccelerateTextStyle.body.small,
      labelStyle: AccelerateTextStyle.body.small,
      labelColor: AccelerateColors.primary,
      labelPadding: const EdgeInsets.symmetric(vertical: 0),
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1), topRight: Radius.circular(1)),
        borderSide: BorderSide(color: AccelerateColors.primary, width: 1.0),
        insets: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
      ),
    );

    return ThemeData(
      useMaterial3: false,
      tabBarTheme: tabBarThemeLight,
      fontFamily: AccelerateFonts.plusJakartaSans,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: AccelerateColors.primary,
        ),
        backgroundColor: AccelerateColors.black,
        titleTextStyle: AccelerateTextStyle.body.medium
            .copyWith(color: AccelerateColors.white),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AccelerateColors.black,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      scaffoldBackgroundColor: AccelerateColors.black,
      colorScheme: const ColorScheme.dark(
          primary: AccelerateColors.primary,
          primaryContainer: AccelerateColors.primary,
          error: AccelerateColors.semanticRed,
          background: AccelerateColors.black,
          surface: AccelerateColors.black,
          onPrimary: AccelerateColors.black,
          onBackground: AccelerateColors.white,
          onSurface: AccelerateColors.white,
          onError: AccelerateColors.black,
          outline: AccelerateColors.primary),
    );
  }
}
