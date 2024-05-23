import 'package:bloc/bloc.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/domain/usecases/create_movie_review_usecase.dart';
import 'package:meta/meta.dart';

part '../events/movie_review_event.dart';
part '../states/movie_review_state.dart';

class MovieReviewViewmodel extends Bloc<MovieReviewEvent, MovieReviewState> {
  final CreateMovieReviewUsecase _movieReviewUsecase;

  MovieReviewViewmodel({CreateMovieReviewUsecase? movieReviewUsecase})
      : _movieReviewUsecase =
            movieReviewUsecase ?? CreateMovieReviewUsecase.instance(),
        super(MovieReviewInitial()) {
    on<AddMovieReview>((event, emit) async {
      emit(MoviesReviewAdding());
      final failureOrMovies =
          await _movieReviewUsecase.invoke(event.createMovieReviewModel);
      failureOrMovies.fold(
        (failure) => emit(MoviesReviewAddError(failure.message)),
        (isAdded) => emit(
            MoviesReviewAddSuccess(isAdded, "Review Successfully Created")),
      );
    });
  }
}
