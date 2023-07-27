class _ApiKeys {
  _ApiKeys._();

  static const publicKey = 'd298f8f70506d4b5cac15d7274e46c60';
  static const hash = 'dab9da409a376999f7768b9e94a60b04';
}

class ApiConfig {
  ApiConfig._();

  static String getRequest(String endpoint, int? offset) {
    return 'http://gateway.marvel.com/v1/public/$endpoint?ts=1000&apikey=${_ApiKeys.publicKey}&hash=${_ApiKeys.hash}$offset!';
  }
}
