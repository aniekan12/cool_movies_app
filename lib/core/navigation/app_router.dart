import 'package:coolmovies/core/navigation/pages.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/presentation/screens/movie_details_screen.dart';
import 'package:coolmovies/modules/movies_home/presentation/screens/movies_home_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter() => GoRouter(
      routes: [
        GoRoute(
          path: AppPages.HOME,
          name: AppPages.HOME,
          builder: (context, state) => const MoviesHomeScreen(),
        ),
        GoRoute(
            path: AppPages.DETAILS,
            name: AppPages.DETAILS,
            builder: (context, state) {
              final movie = state.extra as Movies;
              return MovieDetailsScreen(movies: movie);
            }),
      ],
    );
