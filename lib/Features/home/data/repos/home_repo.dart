import 'package:dartz/dartz.dart';
import 'package:movies_app/Features/home/data/model/cast_model.dart';
import 'package:movies_app/Features/home/data/model/detauils_movie_model/detauils_movie_model.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/data/model/review_model.dart';
import 'package:movies_app/core/errors/failuer.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<MoviesModel>>> featchMovies(String category);
  Future<Either<Failuer, DetauilsMovieModel>> featchDetauilsMovies(int idMovie);
  Future<Either<Failuer, List<CastModel>>> featchMovieActors(int movieId);
    Future<Either<Failuer, List<Review>>> featchReviewsMovie(int movieId);

}
