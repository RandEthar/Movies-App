import 'package:dartz/dartz.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/core/errors/failuer.dart';

   abstract  class SearchRepo {

  Future<Either<Failuer, List<MoviesModel>>> featchPopularMovies();
  Future<Either<Failuer, MoviesModel>> featchSearchMovies(String name);












}