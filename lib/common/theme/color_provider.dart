import 'package:coolmovies/common/gen/fonts.gen.dart';
import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color/cool_movies_colors.dart';

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
      ? CoolMoviesColors.primary
      : CoolMoviesColors.primary;

  Color get containerColor => currentScheme.primaryContainer;

  MaterialColor get errorColor => mode == ThemePreference.light
      ? CoolMoviesColors.primary
      : CoolMoviesColors.primary;

  Color get inActiveColor => mode == ThemePreference.light
      ? CoolMoviesColors.neutral
      : CoolMoviesColors.primary.shade600;

  Color get successColor => mode == ThemePreference.light
      ? CoolMoviesColors.successGreen
      : CoolMoviesColors.successGreen;

  Color get greyBackground => mode == ThemePreference.light
      ? CoolMoviesColors.grey
      : CoolMoviesColors.black;

  Color get primaryAlternate1 => mode == ThemePreference.light
      ? CoolMoviesColors.primaryAlternate1.shade500
      : CoolMoviesColors.primaryAlternate1.withAlpha(1);

  Color get alternateSupport1 => mode == ThemePreference.light
      ? CoolMoviesColors.alternateSupport1
      : CoolMoviesColors.alternateSupport1.shade900;

  MaterialColor get disabledColor => mode == ThemePreference.light
      ? CoolMoviesColors.black
      : CoolMoviesColors.primary;

  Color get buttonTextPrimary => mode == ThemePreference.light
      ? CoolMoviesColors.white
      : CoolMoviesColors.white;

  Color get iconColor => mode == ThemePreference.light
      ? CoolMoviesColors.black.shade500
      : CoolMoviesColors.white;

  Color get iconFillColor => mode == ThemePreference.light
      ? CoolMoviesColors.primary
      : CoolMoviesColors.primary;

  Color get buttonPressedColor => mode == ThemePreference.light
      ? CoolMoviesColors.primary.withOpacity(1)
      : CoolMoviesColors.primary.withOpacity(0.3);

  Color get textColor => mode == ThemePreference.light
      ? CoolMoviesColors.black
      : CoolMoviesColors.white;

  Color get cardTitleColor => mode == ThemePreference.light
      ? CoolMoviesColors.headerText
      : CoolMoviesColors.white;

  Color get cardSubTitleColor => mode == ThemePreference.light
      ? CoolMoviesColors.bodyText
      : CoolMoviesColors.white;

  Color get subtitleColor => mode == ThemePreference.light
      ? CoolMoviesColors.inputText
      : CoolMoviesColors.inputText.shade200;

  Color get success => CoolMoviesColors.successGreen;

  Color get backgroundDefault => mode == ThemePreference.light
      ? CoolMoviesColors.white
      : CoolMoviesColors.black.shade500;

  Color get backgroundColor => mode == ThemePreference.light
      ? CoolMoviesColors.greyBackground.shade400
      : CoolMoviesColors.black;

  Color get cardColor => mode == ThemePreference.light
      ? CoolMoviesColors.white
      : CoolMoviesColors.grey.shade800;

  Color get subtitleTextColor => mode == ThemePreference.light
      ? const Color(0xFF75808A)
      : CoolMoviesColors.white.withOpacity(0.6);

  Color get dialogBarrierColor => mode == ThemePreference.light
      ? CoolMoviesColors.black
      : CoolMoviesColors.black;

  Color get iconBackgroundColor => mode == ThemePreference.light
      ? CoolMoviesColors.primary.shade50
      : CoolMoviesColors.primary.shade200;

  Color get greyText => mode == ThemePreference.light
      ? const Color(0xFF505050)
      : const Color(0xFF505050);

  Color get horizontalStepperInactiveColor => mode == ThemePreference.light
      ? CoolMoviesColors.grey.shade50
      : CoolMoviesColors.grey.shade800;

  Color get shadowColor => mode == ThemePreference.light
      ? Colors.grey.withOpacity(0.08)
      : CoolMoviesColors.black.shade800.withOpacity(0.5);

  Color get containerFade => mode == ThemePreference.light
      ? const Color(0xFFFAFAFA)
      : CoolMoviesColors.black.shade800.withOpacity(0.5);

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
      unselectedLabelStyle: CoolMoviesTextStyle.body.small,
      labelStyle: CoolMoviesTextStyle.body.small,
      labelColor: CoolMoviesColors.primary,
      labelPadding: const EdgeInsets.symmetric(vertical: 0),
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1), topRight: Radius.circular(1)),
        borderSide: BorderSide(color: CoolMoviesColors.primary, width: 1.0),
        insets: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
      ),
    );

    return ThemeData(
      useMaterial3: false,
      tabBarTheme: tabBarThemeLight,
      fontFamily: CoolMoviesFonts.plusJakartaSans,
      primaryColor: CoolMoviesColors.primary,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: const IconThemeData(color: CoolMoviesColors.black, size: 22),
        backgroundColor: CoolMoviesColors.white,
        titleTextStyle: CoolMoviesTextStyle.body.small
            .copyWith(color: CoolMoviesColors.black),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: CoolMoviesColors.grey.shade50,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
      ),
      scaffoldBackgroundColor: CoolMoviesColors.white,
      colorScheme: ColorScheme.light(
          primary: CoolMoviesColors.primary,
          primaryContainer: CoolMoviesColors.primary,
          error: CoolMoviesColors.semanticRed,
          background: CoolMoviesColors.grey.shade50,
          surface: CoolMoviesColors.black.shade700,
          onPrimary: CoolMoviesColors.white,
          onBackground: CoolMoviesColors.black,
          onSurface: CoolMoviesColors.black,
          onError: CoolMoviesColors.white,
          outline: CoolMoviesColors.primary),
    );
  }

  static ThemeData dark() {
    final tabBarThemeLight = TabBarTheme(
      unselectedLabelStyle: CoolMoviesTextStyle.body.small,
      labelStyle: CoolMoviesTextStyle.body.small,
      labelColor: CoolMoviesColors.primary,
      labelPadding: const EdgeInsets.symmetric(vertical: 0),
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1), topRight: Radius.circular(1)),
        borderSide: BorderSide(color: CoolMoviesColors.primary, width: 1.0),
        insets: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
      ),
    );

    return ThemeData(
      useMaterial3: false,
      tabBarTheme: tabBarThemeLight,
      fontFamily: CoolMoviesFonts.plusJakartaSans,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: CoolMoviesColors.primary,
        ),
        backgroundColor: CoolMoviesColors.black,
        titleTextStyle: CoolMoviesTextStyle.body.medium
            .copyWith(color: CoolMoviesColors.white),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: CoolMoviesColors.black,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      scaffoldBackgroundColor: CoolMoviesColors.black,
      colorScheme: const ColorScheme.dark(
          primary: CoolMoviesColors.primary,
          primaryContainer: CoolMoviesColors.primary,
          error: CoolMoviesColors.semanticRed,
          surface: CoolMoviesColors.black,
          onPrimary: CoolMoviesColors.black,
          onSurface: CoolMoviesColors.white,
          onError: CoolMoviesColors.black,
          outline: CoolMoviesColors.primary),
    );
  }
}
