import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/exception/auth_exception.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/exception/server_exception.dart';

import 'fixture.dart';

class ApiClient {
  ApiClient(Client client) : _client = client;

  // ignore: unused_field
  final Client _client;
  String? token;

  // Future<Map<String, String>> getHeader() async {
  //   final headers = <String, String>{
  //     'Content-Type': 'application/json; charset=utf-8',
  //     'Accept': 'application/json',
  //   };
  //   if (token != null) headers['Authorization'] = 'Bearer $token';

  //   return headers;
  // }

  Future<T> responseType<T>(
    Response response,
    T Function(String body) fromJson,
  ) async {
    await Future<dynamic>.delayed(const Duration(seconds: 2));
    if (response.statusCode == 200) {
      try {
        final model = fromJson(response.body);
        return model;
      } catch (e) {
        debugPrint(e.toString());
        throw Exception();
      }
    } else if (response.statusCode == 401) {
      debugPrint('token jok');
      throw AuthException();
    } else {
      debugPrint('server kata');
      throw ServerException();
    }
  }

  // Future<T> get<T>(
  //   String path, {
  //   Map<String, dynamic>? params,
  //   required T Function(String body) fromJson,
  //   required String fn,
  // }) async {
  // final header = await getHeader();
  // final response = await _client.get(
  //   buildUri(path, params: params),
  //   headers: header,
  // );
  //   final response = await fakeApi(fn);
  //   return responseType<T>(response, fromJson);
  // }

  Future<T> post<T>(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headerParams,
    required T Function(String body) fromJson,
    required String fn,
  }) async {
    // final header = await getHeader();
    // final uri = buildUri(path, params: headerParams);
    // final response = await _client.post(uri, headers: header);
    final response = await fakeApi(fn);
    return responseType<T>(response, fromJson);
  }

  // Future<T> patch<T>(
  //   String path, {
  //   Map<String, dynamic>? body,
  //   Map<String, dynamic>? headerParams,
  //   required T Function(String body) fromJson,
  //   required String fn,
  // }) async {
  // final header = await getHeader();
  // final response = await _client.patch(
  //   buildUri(path, params: headerParams),
  //   body: jsonEncode(body),
  //   headers: header,
  // );
  //   final response = await fakeApi(fn);
  //   return responseType<T>(response, fromJson);
  // }

//   Future<T> put<T>(
//     String path, {
//     Map<String, dynamic>? body,
//     required T Function(String body) fromJson,
//     required String fn,
//   }) async {
//     // final header = await getHeader();
//     // final response = await _client.put(
//     //   buildUri(path),
//     //   body: jsonEncode(body),
//     //   headers: header,
//     // );
//     final response = await fakeApi(fn);
//     return responseType<T>(response, fromJson);
//   }

//   Uri buildUri(String path, {Map<String, dynamic>? params}) {
//     final uri = Uri.parse(path);
//     return uri;
//   }

  Future<Response> fakeApi(String fileName) async {
    final body = await fixture(fileName);
    final res = Response(body, 200);
    return res;
  }
}
