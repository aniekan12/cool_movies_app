import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'movies_home_event.dart';
part 'movies_home_state.dart';

class MoviesHomeBloc extends Bloc<MoviesHomeEvent, MoviesHomeState> {
  MoviesHomeBloc() : super(MoviesHomeInitial()) {
    on<MoviesHomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
