import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/body_widget.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/comment_widget.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/image_widget.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/reviews_widget.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/star_rating_widget.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/title_widget.dart';
import 'package:coolmovies/modules/widgets/cool_movies_app_bar.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movies movies;
  const MovieDetailsScreen({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildStarIcons() {
      final edges = movies.movieReviewsByMovieId?.edges ?? [];
      return edges
          .map((_) =>
              Icon(Icons.star, color: context.colorProvider.cardTitleColor))
          .toList();
    }

    return Scaffold(
      backgroundColor: context.colorProvider.backgroundDefault,
      appBar: CoolMoviesAppBar.primary(title: 'Detail'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CoolMoviesImageWidget.fromUrl(
                imageUrl: movies.imgUrl.orEmpty,
                height: context.mq.size.height * 0.5,
                width: context.mq.size.width,
              ),
            ),
            10.verticalGap,
            Text(
              movies.title.orEmpty,
              style: CoolMoviesTextStyle.header.mediumHeader
                  .copyWith(color: context.colorProvider.cardTitleColor),
            ),
            10.verticalGap,
            Row(
              children: [
                Text(
                  '${movies.releaseDate.orEmpty.toReadableDate}  |',
                  style: CoolMoviesTextStyle.header.smallHeader
                      .copyWith(color: context.colorProvider.cardTitleColor),
                ),
              ],
            ),
            10.verticalGap,
            Divider(color: context.colorProvider.cardTitleColor),
            6.verticalGap,
            Center(
              child: Text(
                'Reviews',
                style: CoolMoviesTextStyle.header.mediumHeader
                    .copyWith(color: context.colorProvider.cardTitleColor),
              ),
            ),
            6.verticalGap,
            Divider(color: context.colorProvider.cardTitleColor),
            10.verticalGap,
            ListView.builder(
              itemCount: movies.movieReviewsByMovieId?.edges?.length ?? 0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ReviewWidget(
                    movieReviews:
                        movies.movieReviewsByMovieId!.edges![index].node!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
