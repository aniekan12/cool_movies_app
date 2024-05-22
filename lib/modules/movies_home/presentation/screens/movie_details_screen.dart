import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/image_widget.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/title_widget.dart';
import 'package:coolmovies/modules/widgets/cool_movies_app_bar.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movies movies;
  const MovieDetailsScreen({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
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
            TitleWidget.withText(title: movies.title.orEmpty),
            10.verticalGap,
            10.verticalGap,
            Row(
              children: [
                TitleWidget.withText(
                    title: '${movies.releaseDate.orEmpty.toReadableDate}  |'),
                TitleWidget.withText(
                  title:
                      '${movies.movieReviewsByMovieId!.edges!.first.node!.rating}',
                ),
                Icon(Icons.star, color: context.colorProvider.cardTitleColor),
              ],
            ),
            30.verticalGap,
            TitleWidget.withText(
              title: 'Reviews',
            ),
            Divider(color: context.colorProvider.cardTitleColor),
            10.verticalGap,
            for (var review in movies.movieReviewsByMovieId!.edges!)
              Row(
                children: [
                  TitleWidget.withText(
                    title: review.node!.title.orEmpty,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
