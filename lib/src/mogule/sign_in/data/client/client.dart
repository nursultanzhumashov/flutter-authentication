import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/exception/auth_exception.dart';
import 'package:oracle_digital_app/src/mogule/sign_in/data/exception/server_exception.dart';

import 'fixture.dart';

class ApiClient {
  ApiClient(Client client) : _client = client;

  final Client _client;
  String? token;

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

  Future<Response> fakeApi(String fileName) async {
    final body = await fixture(fileName);
    final res = Response(body, 200);
    return res;
  }
}
