import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/Features/home/data/repos/home_repo_Impel.dart';
import 'package:movies_app/core/utils/api_services.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpel>(
      HomeRepoImpel(getIt.get<ApiServices>()));
}
