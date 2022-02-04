import '../http.dart';

class HttpMessages {
  List<Map<String, dynamic>> messages = [
    {'code': HttpAdapterErrors.success, 'message': 'success message'},
    {'code': HttpAdapterErrors.created, 'message': 'created message'},
    {'code': HttpAdapterErrors.noContent, 'message': 'no content message'},
    {'code': HttpAdapterErrors.badRequest, 'message': 'bad request message'},
    {'code': HttpAdapterErrors.unAuthorized, 'message': 'unauthorized message'},
    {'code': HttpAdapterErrors.forbidden, 'message': 'forbidden message'},
    {'code': HttpAdapterErrors.notFound, 'message': 'not found message'},
    {
      'code': HttpAdapterErrors.internalServerError,
      'message': 'internal error message'
    },
  ];

  getStatusMessage(HttpAdapterErrors code) {
    try {
      List<Map<String, dynamic>> _message =
          messages.where((e) => e['code'] == code).toList();

      return _message[0]['message'].toString();
    } catch (e) {
      return 'Código de retorno não encontrado.';
    }
  }
}
