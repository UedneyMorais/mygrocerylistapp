import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:mygrocerylist/application/infrastructure/http/entities/entities.dart';
import 'package:mygrocerylist/env/env.dart';

class HttpAdapter implements HttpClientX {
  Endpoints endpoints = Endpoints();

  @override
  delete({required String uri, required Map<String, String>? headers}) async {
    late HttpResponseX futureResponse;
    Uri url = Uri.https(endpoints.autorith, uri);

    http.Response response = await http
        .post(url, headers: headers)
        .timeout(const Duration(seconds: 20), onTimeout: () {
      return http.Response('timeout', 500);
    });

    if (response.statusCode == 200) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.success,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 400) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.badRequest,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 403) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.forbidden,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 404) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.notFound,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 500) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.internalServerError,
          body: jsonDecode(response.body),
          headers: response.headers);
    }

    return Future.value(futureResponse);
  }

  @override
  get(
      {required String uri,
      required Map<String, String>? headers,
      Map<String, dynamic>? parameters}) async {
    late HttpResponseX futureResponse;
    Uri url = Uri.https(endpoints.autorith, uri, parameters);

    http.Response response = await http
        .get(url, headers: headers)
        .timeout(const Duration(seconds: EnviromentConstants.timeOutException),
            onTimeout: () {
      return http.Response('timeout', 500);
    });

    if (response.statusCode == 200) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.success,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 201) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.created,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 202) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.accepted,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 204) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.noContent,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 401) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.unAuthorized,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 400) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.badRequest,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 403) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.forbidden,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 404) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.notFound,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 500) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.internalServerError,
          body: jsonDecode(response.body),
          headers: response.headers);
    }

    return Future.value(futureResponse);
  }

  @override
  patch(
      {required Uri uri,
      required Map<String, String>? headers,
      required Object? body}) {
    throw UnimplementedError();
  }

  @override
  post(
      {required String uri,
      required Map<String, String>? headers,
      required Object? body}) async {
    late HttpResponseX futureResponse;
    Uri url = Uri.https(endpoints.autorith, uri);
    final encodedBody = jsonEncode(body);

    http.Response response = await http
        .post(url, headers: headers, body: encodedBody)
        .timeout(const Duration(seconds: 20), onTimeout: () {
      return http.Response('timeout', 500);
    });

    if (response.statusCode == 200) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.success,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 400) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.badRequest,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 403) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.forbidden,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 404) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.notFound,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 500) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.internalServerError,
          body: jsonDecode(response.body),
          headers: response.headers);
    }

    return Future.value(futureResponse);
  }

  @override
  put(
      {required String uri,
      required Map<String, String>? headers,
      required Object? body}) async {
    late HttpResponseX futureResponse;
    Uri url = Uri.https(endpoints.autorith, uri);
    final encodedBody = jsonEncode(body);

    http.Response response = await http
        .post(url, headers: headers, body: encodedBody)
        .timeout(const Duration(seconds: 20), onTimeout: () {
      return http.Response('timeout', 500);
    });

    if (response.statusCode == 200) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.success,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 400) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.badRequest,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 403) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.forbidden,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 404) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.notFound,
          body: jsonDecode(response.body),
          headers: response.headers);
    } else if (response.statusCode == 500) {
      futureResponse = HttpResponseX(
          statusCode: HttpAdapterErrors.internalServerError,
          body: jsonDecode(response.body),
          headers: response.headers);
    }

    return Future.value(futureResponse);
  }

  paginatedSearch(
      {required String url,
      required String searchedValue,
      required int numberOfResults,
      required int pageNumber,
      String? orderBy,
      String? direction}) async {
    String token =
        'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyb2lAZ21haWwuY29tIiwiYXVkIjoiMSIsImV4cCI6MTY0NDE0Njg0M30.Opdi1aw_L33C7O4Z8Et-jyS9AKRI4rTjKj0RCKUGYJ6wM1zrPvEkQkrOFFqdpOKBsX4bUJUaqbELbcHEXSog8Q';
    Map<String, String>? headers = {
      "Accept": "application/json",
      "content-type": "application/json",
      "key": "Content-Type",
      "value": "application/json",
      "type": "text",
      "authorization": 'Bearer ' + token,
    };
    Map<String, String>? parameters = {
      "q": searchedValue,
      "page": pageNumber.toString(),
      "linesPerPage": numberOfResults.toString(),
      "OrderBy": orderBy!,
      "direction": direction!
    };
    var response =
        await get(uri: url, headers: headers, parameters: parameters);

    return Future.value(response);
  }
}
