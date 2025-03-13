import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'featch_movies_detuils_state.dart';

class FeatchMoviesDetuilsCubit extends Cubit<FeatchMoviesDetuilsState> {
  FeatchMoviesDetuilsCubit() : super(FeatchMoviesDetuilsInitial());
}
