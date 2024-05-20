import 'package:coolmovies/common/theme/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'common/di/locator.dart';

class CoolMoviesApp extends StatefulWidget {
  const CoolMoviesApp({Key? key}) : super(key: key);

  @override
  State<CoolMoviesApp> createState() => _AccelerateMobileAppState();
}

class _AccelerateMobileAppState extends State<CoolMoviesApp> {
  final _router = locator<GoRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: ColorProvider(
        mode: ThemePreference.light,
        lightTheme: ColorProvider.light(),
        darkTheme: ColorProvider.dark(),
        child: MaterialApp.router(
          routerConfig: _router,
        ),
      ),
    );
  }
}
