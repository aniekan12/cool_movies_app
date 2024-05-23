import 'package:coolmovies/common/typography/text_styles.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final MovieReviews movieReviews;

  const CommentWidget({Key? key, required this.movieReviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: movieReviews.edges!.map((review) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Row(
            children: [
              Icon(Icons.person_3, color: context.colorProvider.cardTitleColor),
              Text(
                review.node!.title.orEmpty,
                style: CoolMoviesTextStyle.body.medium.copyWith(
                    color: context.colorProvider.cardTitleColor, fontSize: 15),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
