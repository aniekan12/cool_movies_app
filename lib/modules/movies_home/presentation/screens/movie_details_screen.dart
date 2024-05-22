import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/widgets/cool_movies_app_bar.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movies movies;
  const MovieDetailsScreen({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoolMoviesAppBar.primary(title: movies.title.orEmpty),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
