import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../events/movies_home_event.dart';
part '../states/movies_home_state.dart';

class MoviesHomeViewmodel extends Bloc<MoviesHomeEvent, MoviesHomeState> {
  MoviesHomeViewmodel() : super(MoviesHomeInitial()) {
    on<MoviesHomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
