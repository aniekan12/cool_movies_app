import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

class StarRatingWidget extends StatelessWidget {
  final MovieReviews movieReviews;

  const StarRatingWidget({Key? key, required this.movieReviews})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: movieReviews.edges!.map((review) {
        return Row(
          children: List.generate(review.node!.rating!, (index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
              child: Icon(Icons.star,
                  size: 20, color: context.colorProvider.cardTitleColor),
            );
          }),
        );
      }).toList(),
    );
  }
}
