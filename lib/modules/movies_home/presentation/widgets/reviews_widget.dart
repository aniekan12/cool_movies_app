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
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movieReviews.title.orEmpty,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              movieReviews.body.orEmpty,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            RatingBarIndicator(
              rating: movieReviews.rating!.toDouble(),
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.amber,
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
