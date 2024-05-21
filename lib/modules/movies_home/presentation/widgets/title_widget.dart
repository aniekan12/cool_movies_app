import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  const TitleWidget._({
    super.key,
    required this.title,
    required this.icon,
  });

  factory TitleWidget.withIcon({
    required String title,
    Key? key,
    required IconData icon,
  }) {
    return TitleWidget._(
      key: key,
      title: title,
      icon: icon,
    );
  }

  factory TitleWidget.withText({
    required String title,
    Key? key,
  }) {
    return TitleWidget._(
      title: title,
      icon: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
        ),
        if (icon != null) 2.horizontalGap else 0.horizontalGap,
        Text(title),
      ],
    );
  }
}
