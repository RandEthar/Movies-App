import 'package:dio/dio.dart';

abstract class Failuer {
  final String errorMessage;

  Failuer({required this.errorMessage});
}

class ServierFaluier extends Failuer {
  ServierFaluier({required String errorMessage}) : super(errorMessage: errorMessage);

  factory ServierFaluier.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServierFaluier(errorMessage: "Connection timed out. Please check your internet connection and try again.");

      case DioExceptionType.sendTimeout:
        return ServierFaluier(errorMessage: "Request took too long to send. Please try again later.");

      case DioExceptionType.receiveTimeout:
        return ServierFaluier(errorMessage: "Server took too long to respond. Please try again later.");

      case DioExceptionType.badCertificate:
        return ServierFaluier(errorMessage: "Invalid SSL certificate. Secure connection cannot be established.");

      case DioExceptionType.badResponse:
        return ServierFaluier.badResponse(
          statusCode: dioException.response?.statusCode ?? 500,
          response: dioException.response?.data ?? {},
        );

      case DioExceptionType.cancel:
        return ServierFaluier(errorMessage: "Request was canceled. Please try again.");

      case DioExceptionType.connectionError:
        return ServierFaluier(errorMessage: "Failed to connect to the server. Please check your network connection.");

      case DioExceptionType.unknown:
        return ServierFaluier(errorMessage: "An unknown error occurred. Please try again.");

      default:
        return ServierFaluier(errorMessage: "An unexpected error occurred. Please try again.");
    }
  }

  factory ServierFaluier.badResponse({required int statusCode, required Map<String, dynamic> response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServierFaluier(errorMessage: response["status_message"] ?? "Unauthorized request. Please check your credentials.");
    } else if (statusCode == 404) {
      return ServierFaluier(errorMessage: "The requested resource was not found. Please try again later.");
    } else if (statusCode == 500) {
      return ServierFaluier(errorMessage: "Internal server error. Please try again later.");
    }
    return ServierFaluier(errorMessage: "An unexpected error occurred. Please try again.");
  }
}








