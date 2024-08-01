import 'dart:convert';
import 'package:dio/dio.dart';

import 'api_contants.dart';
import 'api_interseptor.dart';

class Api {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.BASEURL,
      headers: ApiConstants.headers,
    ),
  )..interceptors.add(ApiInterceptor());

  //methods
  static Future<String?> GET(String api, Map<String, String> params) async {
    try {
      final response = await dio.get(api, queryParameters: params);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data.toString();
      }
    } catch (e) {
      print('GET request error: $e');
    }
    return null;
  }

  static Future<String?> POST(String api, Map<String, dynamic> body) async {
    try {
      final response = await dio.post(api, data: jsonEncode(body));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data.toString();
      }
    } catch (e) {
      print('POST request error: $e');
    }
    return null;
  }

  static Future<String?> PUT(String api, Map<String, dynamic> body, Map<String, dynamic> param) async {
    try {
      final response = await dio.put(api, queryParameters: param, data: jsonEncode(body));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data.toString();
      }
    } catch (e) {
      print('PUT request error: $e');
    }
    return null;
  }

  static Future<String?> PATCH(String api, Map<String, String> params, Map<String, dynamic> body) async {
    try {
      final response = await dio.patch(api, queryParameters: params, data: jsonEncode(body));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data.toString();
      }
    } catch (e) {
      print('PATCH request error: $e');
    }
    return null;
  }

  static Future<String?> DELETE(String api, Map<String, String> params) async {
    try {
      final response = await dio.delete(api, queryParameters: params);
      if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 204) {
        return response.data.toString();
      }
    } catch (e) {
      print('DELETE request error: $e');
    }
    return null;
  }
}
