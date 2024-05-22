import 'package:coolmovies/modules/movies_home/presentation/view_models/movies_home_viewmodel.dart';
import 'package:coolmovies/modules/movies_home/presentation/widgets/movies_widget.dart';
import 'package:coolmovies/modules/widgets/cool_movies_app_bar.dart';
import 'package:coolmovies/utils/cool_movies.extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      appBar: CoolMoviesAppBar.primary(title: 'Cool Movies'),
      backgroundColor: context.colorProvider.backgroundDefault,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<MoviesHomeViewmodel, MoviesHomeState>(
            builder: (context, state) {
              if (state is MoviesHomeLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if (state is MoviesHomeLoaded) {
                return ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                          color: Colors.transparent,
                        ),
                    itemBuilder: (context, index) {
                      return MoviesWidget(movies: state.movies[index]);
                    },
                    itemCount: state.movies.length,
                    shrinkWrap: true);
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
