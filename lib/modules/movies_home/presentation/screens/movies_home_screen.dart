import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolmovies/common/color/cool_movies_color.dart';
import 'package:coolmovies/modules/movies_home/presentation/view_models/movies_home_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesHomeScreen extends StatefulWidget {
  const MoviesHomeScreen({super.key});

  @override
  State<MoviesHomeScreen> createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  @override
  void initState() {
    context.read<MoviesHomeViewmodel>().add(FetchMovies());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoolMoviesColors.backgroundLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              BlocBuilder<MoviesHomeViewmodel, MoviesHomeState>(
                builder: (context, state) {
                  if (state is MoviesHomeLoading) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }
                  if (state is MoviesHomeLoaded) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CachedNetworkImage(
                              width: 100,
                              imageUrl: state.movies.first.imgUrl!,
                              placeholder: (context, url) =>
                                  const CupertinoActivityIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(state.movies.first.title!),
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
                                Text(state
                                    .movies.first.userByUserCreatorId!.name!),
                              ],
                            )
                          ],
                        )
                      ],
                    );
                  }
                  return const SizedBox();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
