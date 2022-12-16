class AppEnpoint {
  AppEnpoint._();

  // base url
  static const String baseUrl = "https://10.0.2.2:44309/api";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String user = '/accounts';
  static const String login = '/authen/login';
}
