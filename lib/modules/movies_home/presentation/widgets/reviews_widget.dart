import 'package:coolmovies/common/theme/color/cool_movies_colors.dart';
import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewWidget extends StatelessWidget {
  final Nodes movieReviews;

  const ReviewWidget({
    super.key,
    required this.movieReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movieReviews.title.orEmpty,
                style: CoolMoviesTextStyle.header.pageTitle1),
            10.verticalGap,
            Text(
              movieReviews.body.orEmpty,
              style: CoolMoviesTextStyle.body.medium,
            ),
            10.verticalGap,
            RatingBarIndicator(
              rating: movieReviews.rating!.toDouble(),
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: CoolMoviesColors.alternate,
              ),
              itemCount: 5,
              itemSize: 30.0,
              direction: Axis.horizontal,
            ),
          ],
        ),
      ),
    );
  }
}
