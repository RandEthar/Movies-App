import 'package:dartz/dartz.dart';
import 'package:movies_app/Features/home/data/model/detauils_movie_model/detauils_movie_model.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/core/errors/failuer.dart';

   abstract  class SearchRepo {

  Future<Either<Failuer, List<MoviesModel>>> featchPopularMovies();
  Future<Either<Failuer,List<MoviesModel>>> featchSearchMovies(String name);

 Future<Either<Failuer, DetauilsMovieModel>> featchDetauilsMovies(int idMovie);










}