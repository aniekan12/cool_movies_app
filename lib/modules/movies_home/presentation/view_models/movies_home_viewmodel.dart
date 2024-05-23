import 'package:bloc/bloc.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/domain/usecases/get_movies_usecase.dart';
import 'package:meta/meta.dart';

part '../events/movies_home_event.dart';
part '../states/movies_home_state.dart';

class MoviesHomeViewmodel extends Bloc<MoviesHomeEvent, MoviesHomeState> {
  final GetMoviesUsecase _getMoviesUsecase;

  MoviesHomeViewmodel({GetMoviesUsecase? getMoviesUsecase})
      : _getMoviesUsecase = getMoviesUsecase ?? GetMoviesUsecase.instance(),
        super(MoviesHomeInitial()) {
    on<FetchMovies>((event, emit) async {
      emit(MoviesHomeLoading());
      final failureOrMovies = await _getMoviesUsecase.invoke();
      failureOrMovies.fold(
        (failure) => emit(MoviesHomeError(failure.message)),
        (movies) => emit(MoviesHomeLoaded(movies)),
      );
    });
  }
}
