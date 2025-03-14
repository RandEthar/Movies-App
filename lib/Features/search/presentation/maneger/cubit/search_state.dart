part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchSuccess extends SearchState {
 final List<MoviesModel> listMovies;

  SearchSuccess({required this.listMovies});
}
final class SearchFalier extends SearchState {
final String errorMasseg;

  SearchFalier({required this.errorMasseg});



}