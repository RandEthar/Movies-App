import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/data/repos/search_repo.dart';
import 'package:movies_app/core/errors/failuer.dart';
import 'package:movies_app/core/utils/api_endpoints.dart';
import 'package:movies_app/core/utils/api_services.dart';

class SearchRepoImple implements SearchRepo{
  final ApiServices apiServices;

  SearchRepoImple({required this.apiServices});
  @override
  Future<Either<Failuer, List<MoviesModel>>> featchPopularMovies() async{
   try {
      var data = await apiServices.get(
          endPoint: "movie/popular?api_key=${ApiEndpoints.apiKey}");
      List<MoviesModel> movies = [];
      for (var item in data["results"]) {
        movies.add(MoviesModel.fromJson(item));
      }
      return right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServierFaluier.fromDioError(e));
      }
      return left(ServierFaluier(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failuer, MoviesModel>> featchSearchMovies(String name) {
    // TODO: implement featchSearchMovies
    throw UnimplementedError();
  }
}