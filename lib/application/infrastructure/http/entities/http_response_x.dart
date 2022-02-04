import 'http_adapter_errors.dart';

class HttpResponseX {
  HttpAdapterErrors statusCode;
  dynamic body;
  Map<String, String>? headers;

  HttpResponseX({this.body, this.headers, required this.statusCode});
}
