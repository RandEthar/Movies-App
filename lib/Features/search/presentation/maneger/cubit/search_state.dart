part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class FetchPopularLoading extends SearchState {}

final class FetchPopularSuccess extends SearchState {
  final List<MoviesModel> listMovies;

  FetchPopularSuccess({required this.listMovies});
}

final class FetchPopularFalier extends SearchState {
  final String errorMasseg;

  FetchPopularFalier({required this.errorMasseg});
}

final class SearchMoviesLoading extends SearchState {}

final class SearchMoviesSuccess extends SearchState {
  final List<MoviesModel> listMovies;

  SearchMoviesSuccess({required this.listMovies});
}

final class SearchMoviesFalier extends SearchState {
  final String errorMasseg;

  SearchMoviesFalier({required this.errorMasseg});
}

final class FeatchMoviesDetuilsLoading extends SearchState  {}

final class FeatchMoviesDetuilsSuccess extends SearchState  {
  final DetauilsMovieModel detauilsMovieModel;

  FeatchMoviesDetuilsSuccess({required this.detauilsMovieModel});
}

final class FeatchMoviesDetuilsFaluir extends SearchState {
  final String errorMassage;

  FeatchMoviesDetuilsFaluir({required this.errorMassage});
}
