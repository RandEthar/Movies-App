import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/data/repos/home_repo.dart';

part 'featch_movies_state.dart';

class FeatchMoviesCubit extends Cubit<FeatchMoviesState> {
  FeatchMoviesCubit(this.homeRepo) : super(FeatchMoviesInitial());

  final HomeRepo homeRepo;

  featchMovies() async {
    emit(FeatchMoviesLoading());
    var result = await homeRepo.featchMovies("popular");

    result.fold(
        (errors) => emit(FeatchMoviesFalier(errorMassage: errors.errorMessage)),
        (data) => emit(FeatchMoviesSuccess(listMoview: data)));
  }

  filterMovies(String category) async {
    emit(FilterMoviesLoading());
    late var result;
    switch (category) {
      case "Now playing":
        result = await homeRepo.featchMovies("now_playing");
        break;
      case "Upcoming":
        result = await homeRepo.featchMovies("upcoming");
        break;
      case "Top rated":
        result = await homeRepo.featchMovies("top_rated");
        break;
      case "Popular":
        result = await homeRepo.featchMovies("popular");
        break;
      default:
        result = await homeRepo.featchMovies("day");
        break;
    }
    result.fold(
        (errors) => emit(FilterMoviesFalier(errorMassage: errors.errorMessage)),
        (data) => emit(FilterMoviesSuccess(listFilterMoview: data)));
  }
}
// List<String> categories = [
//   "Now playing",
//   "Upcoming",
//   "Top rated",
//   "Popular",

// ];
// List<String> requests = [
//   "https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey",
//   "https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey",
//   "https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey",
//   "https://api.themoviedb.org/3/movie/popular?api_key=$apiKey",
//   "https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey" // هذا هو الصحيح لـ "Trending"
// ];
