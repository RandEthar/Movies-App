import 'package:dio/dio.dart';
import 'package:movies_app/core/utils/api_endpoints.dart';

class ApiServices {
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("${ApiEndpoints.baseURL}$endPoint");

    return response.data;
  }
}
