import 'package:coolmovies/common/theme/size_config.dart';
import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

typedef AppBarTextBuilder = Widget Function(BuildContext context);

class CoolMoviesAppBar {
  CoolMoviesAppBar._();

  static PreferredSizeWidget primary({
    required String title,
    List<Widget> actions = const [],
    Color? backgroundColor,
    bool automaticallyImpliesLeading = true,
    double elevation = 0.0,
  }) {
    return _CoolMoviesPrimaryAppBar(
      title: title,
      actions: actions,
      backgroundColor: backgroundColor,
      automaticallyImpliesLeading: automaticallyImpliesLeading,
      elevation: elevation,
    );
  }

  static PreferredSizeWidget primaryWithTitleBuilder({
    required AppBarTextBuilder appBarTextBuilder,
    List<Widget> actions = const [],
    bool automaticallyImpliesLeading = true,
    double elevation = 0.0,
  }) {
    return _CoolMoviesPrimaryAppBarWithTitleBuilder(
      titleBuilder: appBarTextBuilder,
      actions: actions,
      automaticallyImpliesLeading: automaticallyImpliesLeading,
      elevation: elevation,
    );
  }

  static PreferredSizeWidget empty({
    bool automaticallyImpliesLeading = true,
    double elevation = 0.0,
  }) {
    return _CoolMoviesPrimaryAppBar(
      title: '',
      actions: const [],
      automaticallyImpliesLeading: automaticallyImpliesLeading,
      elevation: elevation,
    );
  }

  static PreferredSizeWidget iconWithActions(
      {required List<Widget> actions,
      Widget leading = const SizedBox(),
      bool automaticallyImpliesLeading = true,
      double elevation = 0.1}) {
    return _$AppBar(
      actions: actions,
      leading: SizedBox(width: double.infinity, child: leading),
      automaticallyImpliesLeading: automaticallyImpliesLeading,
      elevation: elevation,
      leadingWidth: SizeConfig.pxToWidth(150),
      toolbarHeight: SizeConfig.pxToHeight(70),
    );
  }
}

class _CoolMoviesPrimaryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final List<Widget> actions;
  final String title;
  final bool automaticallyImpliesLeading;
  final double elevation;
  final Color? backgroundColor;

  const _CoolMoviesPrimaryAppBar({
    required this.actions,
    required this.title,
    this.backgroundColor,
    required this.automaticallyImpliesLeading,
    this.elevation = 0.1,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppBar(
      title: title,
      backgroundColor: backgroundColor,
      actions: actions,
      centerTitle: true,
      elevation: elevation,
      automaticallyImpliesLeading: automaticallyImpliesLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CoolMoviesPrimaryAppBarWithTitleBuilder extends StatelessWidget
    implements PreferredSizeWidget {
  final List<Widget> actions;
  final AppBarTextBuilder titleBuilder;
  final bool automaticallyImpliesLeading;
  final double elevation;

  const _CoolMoviesPrimaryAppBarWithTitleBuilder({
    required this.actions,
    required this.titleBuilder,
    required this.automaticallyImpliesLeading,
    this.elevation = 0.1,
  });

  @override
  Widget build(BuildContext context) {
    return _$AppBar(
      titleWidget: titleBuilder.call(context),
      actions: actions,
      centerTitle: true,
      elevation: elevation,
      automaticallyImpliesLeading: automaticallyImpliesLeading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _$AppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final bool automaticallyImpliesLeading;
  final Widget? icon;
  final PreferredSize? bottom;
  final List<Widget>? actions;
  final bool centerTitle;
  final Widget? leading;
  final Color? backgroundColor;
  final double toolbarHeight;
  final double elevation;
  final double leadingWidth;
  final Color? color;

  const _$AppBar({
    this.title,
    this.backgroundColor,
    this.leading,
    this.titleWidget,
    this.toolbarHeight = kToolbarHeight,
    this.automaticallyImpliesLeading = true,
    this.icon,
    this.actions,
    this.leadingWidth = 0.0,
    this.bottom,
    this.color,
    this.centerTitle = true,
    this.elevation = 0.1,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      toolbarHeight: toolbarHeight,
      backgroundColor:
          backgroundColor ?? context.colorProvider.backgroundDefault,
      elevation: elevation,
      title: icon ??
          titleWidget ??
          Text(title.orEmpty,
              style: CoolMoviesTextStyle.header.largeHeader
                  .copyWith(color: context.colorProvider.cardTitleColor)),
      automaticallyImplyLeading: automaticallyImpliesLeading,
      actions: actions,
      centerTitle: centerTitle,
      bottom: bottom,
      leadingWidth: leading != null ? leadingWidth : null,
      iconTheme: Theme.of(context)
          .iconTheme
          .copyWith(color: context.colorProvider.iconColor),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
