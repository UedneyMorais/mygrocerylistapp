class Endpoints {
//Server
  static const String _hostAddress = '192.168.77.36';
  String get hostAddress => _hostAddress;

  static const String _hostPort = '8080';
  String get hostPort => _hostPort;

  String _autorith = '';
  String get autorith => _autorith;

  void setAuthority() {
    _autorith = hostAddress + ':' + hostPort;
  }

  Endpoints() {
    setAuthority();
  }
}
