import 'package:coolmovies/modules/movies_home/presentation/view_models/movies_home_viewmodel.dart';
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
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          title: Text("Cool Movies"),
          centerTitle: true,
        ),
        SliverToBoxAdapter(
          child: BlocConsumer<MoviesHomeViewmodel, MoviesHomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return switch (state) {
                MoviesHomeLoading() => const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                MoviesHomeLoaded(movies: final data) =>
                  Text(data.firstOrNull!.id ?? ""),
                MoviesHomeError(message: final message) => Text(message),
                _ => const SizedBox(),
              };
            },
          ),
        )
      ]),
    );
  }
}
