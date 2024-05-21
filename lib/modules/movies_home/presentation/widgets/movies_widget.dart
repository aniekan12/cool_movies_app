import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
            CachedNetworkImage(
              width: 100,
              imageUrl: movies.imgUrl!,
              placeholder: (context, url) => const CupertinoActivityIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movies.title!),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 12,
                ),
                SizedBox(width: 2),
                Text(state.movies.first.releaseDate!),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, size: 12),
                SizedBox(width: 2),
                Text(state.movies.first.userByUserCreatorId!.name!),
              ],
            )
          ],
        )
      ],
    );
  }
}
