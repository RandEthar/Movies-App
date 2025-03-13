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