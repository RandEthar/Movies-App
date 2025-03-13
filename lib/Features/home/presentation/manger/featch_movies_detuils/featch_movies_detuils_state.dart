part of 'featch_movies_detuils_cubit.dart';

@immutable
sealed class FeatchMoviesDetuilsState {}

final class FeatchMoviesDetuilsInitial extends FeatchMoviesDetuilsState {}

final class FeatchMoviesDetuilsLoading extends FeatchMoviesDetuilsState {}

final class FeatchMoviesDetuilsSuccess extends FeatchMoviesDetuilsState {
  final DetauilsMovieModel detauilsMovieModel;

  FeatchMoviesDetuilsSuccess({required this.detauilsMovieModel});
}

final class FeatchMoviesDetuilsFaluir extends FeatchMoviesDetuilsState {
  final String errorMassage;

  FeatchMoviesDetuilsFaluir({required this.errorMassage});
}

final class FeatchCastSuccess extends FeatchMoviesDetuilsState {
  final List<CastModel> listCastModel;

  FeatchCastSuccess({required this.listCastModel});
}

final class FeatchCastFaluir extends FeatchMoviesDetuilsState {
  final String errorMassage;

  FeatchCastFaluir({required this.errorMassage});
}
