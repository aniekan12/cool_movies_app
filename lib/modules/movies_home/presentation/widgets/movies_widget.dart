import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/title_widget.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

import 'image_widget.dart';

class MoviesWidget extends StatelessWidget {
  final Movies movies;
  const MoviesWidget({required this.movies, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CoolMoviesImageWidget.fromUrl(
                imageUrl: movies.imgUrl.orEmpty,
              ),
            ),
          ],
        ),
        5.horizontalGap,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movies.title.orEmpty,
              style: CoolMoviesTextStyle.header.mediumHeader
                  .copyWith(color: context.colorProvider.cardTitleColor),
            ),
            20.verticalGap,
            TitleWidget.withIcon(
                title: movies.releaseDate.orEmpty, icon: Icons.calendar_today),
            10.verticalGap,
            TitleWidget.withIcon(
                title: movies.userByUserCreatorId!.name.orEmpty,
                icon: Icons.person),
          ],
        )
      ],
    );
  }
}
