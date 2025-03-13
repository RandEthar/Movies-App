part of 'featch_movies_cubit.dart';

@immutable
sealed class FeatchMoviesState {}

final class FeatchMoviesInitial extends FeatchMoviesState {}

final class FeatchMoviesLoading extends FeatchMoviesState {}

final class FeatchMoviesSuccess extends FeatchMoviesState {
  final List<MoviesModel> listMoview;

  FeatchMoviesSuccess({required this.listMoview});
}

final class FeatchMoviesFalier extends FeatchMoviesState {
  final String errorMassage;

  FeatchMoviesFalier({required this.errorMassage});
}

final class FilterMoviesLoading extends FeatchMoviesState {}

final class FilterMoviesSuccess extends FeatchMoviesState {
  final List<MoviesModel> listFilterMoview;

  FilterMoviesSuccess({required this.listFilterMoview});
}

final class FilterMoviesFalier extends FeatchMoviesState {
  final String errorMassage;

  FilterMoviesFalier({required this.errorMassage});
}
