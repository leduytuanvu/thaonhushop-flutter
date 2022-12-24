class AppEndpoint {
  AppEndpoint._();

  // base url
  // static const String baseUrl = "https://10.0.2.2:44309/api";
  static const String baseUrl = "https://10.0.2.2:5001";

  static const String contentType = "application/json";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String register = '/auth/register';

  static const String login = '/auth/login';
}
