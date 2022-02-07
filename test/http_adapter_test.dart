import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mygrocerylist/application/infrastructure/http/http.dart';

import 'http_adapter_test.mocks.dart';

@GenerateMocks([HttpAdapter])
void main() {
  Map<String, String> headers = {};

  group('Test group for http adapter', () {
    HttpAdapter adapter = MockHttpAdapter();

    test(
        'GIVEN a http request,WHEN api return a status code 200, THEN should be return a success',
        () async {
      when(adapter.get(uri: 'uri', headers: headers)).thenAnswer(
          (_) async => HttpResponseX(statusCode: HttpAdapterErrors.success));
      HttpResponseX response = await adapter.get(uri: 'uri', headers: headers);
      expect(response.statusCode, HttpAdapterErrors.success);
    });

    test(
        'GIVEN a http request,WHEN api return a status code 400, THEN should be return a Bad Request',
        () async {
      when(adapter.get(uri: 'uri', headers: headers)).thenAnswer(
          (_) async => HttpResponseX(statusCode: HttpAdapterErrors.badRequest));
      HttpResponseX response = await adapter.get(uri: 'uri', headers: headers);
      expect(response.statusCode, HttpAdapterErrors.badRequest);
    });

    test(
        'GIVEN a http request,WHEN api return a status code 401, THEN should be return a Unauthorized',
        () async {
      when(adapter.get(uri: 'uri', headers: headers)).thenAnswer((_) async =>
          HttpResponseX(statusCode: HttpAdapterErrors.unAuthorized));
      HttpResponseX response = await adapter.get(uri: 'uri', headers: headers);
      expect(response.statusCode, HttpAdapterErrors.unAuthorized);
    });

    test(
        'GIVEN a http request,WHEN api return a status code 403, THEN should be return a Unauthorized',
        () async {
      when(adapter.get(uri: 'uri', headers: headers)).thenAnswer((_) async =>
          HttpResponseX(statusCode: HttpAdapterErrors.unAuthorized));
      HttpResponseX response = await adapter.get(uri: 'uri', headers: headers);
      expect(response.statusCode, HttpAdapterErrors.unAuthorized);
    });

    test(
        'GIVEN a http request,WHEN api return a status code 404, THEN should be return a Forbidden',
        () async {
      when(adapter.get(uri: 'uri', headers: headers)).thenAnswer(
          (_) async => HttpResponseX(statusCode: HttpAdapterErrors.forbidden));
      HttpResponseX response = await adapter.get(uri: 'uri', headers: headers);
      expect(response.statusCode, HttpAdapterErrors.forbidden);
    });

    test(
        'GIVEN a http request,WHEN api return a status code 500, THEN should be return a Forbidden',
        () async {
      when(adapter.get(uri: 'uri', headers: headers)).thenAnswer((_) async =>
          HttpResponseX(statusCode: HttpAdapterErrors.internalServerError));
      HttpResponseX response = await adapter.get(uri: 'uri', headers: headers);
      expect(response.statusCode, HttpAdapterErrors.internalServerError);
    });
  });
}
