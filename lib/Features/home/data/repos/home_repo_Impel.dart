import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/data/repos/home_repo.dart';
import 'package:movies_app/core/errors/failuer.dart';
import 'package:movies_app/core/utils/api_endpoints.dart';
import 'package:movies_app/core/utils/api_services.dart';

class HomeRepoImpel implements HomeRepo {
  final ApiServices apiServices;
//now_playing
  HomeRepoImpel(this.apiServices);
  @override
  Future<Either<Failuer, List<MoviesModel>>> featchMovies(
      String category) async {
    try {
      var data = await apiServices.get(
          endPoint: "movie/$category?api_key=${ApiEndpoints.apiKey}");
      List<MoviesModel> movies = [];
      for (var item in data["results"]) {
        movies.add(MoviesModel.fromJson(item));
      }
      return right(movies);
    } on Exception catch (e) {
         if (e is DioException) {
             return left( ServierFaluier.fromDioError(e) );
         }
            return left( ServierFaluier(errorMessage: e.toString()) );
    }
  }
}
