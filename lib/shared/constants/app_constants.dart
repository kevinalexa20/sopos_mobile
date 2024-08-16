class AppConstants {
  static const String appName = 'SOPOS mobile';

  //API Related
  static const String baseUrl = 'https://api.sopos.com';
  static const int apiTimeOut = 30000; //mili seconds

  //SharedPreferences Keys
  static const String authToken = 'auth_token';
  static const String userIdKey = 'user_id';

  //Assets path related

  //Routes Names
  static const String homeRoute = '/home';
  static const String loginRoute = '/login';
  static const String splashRoute = '/splash';
  static const String registerRoute = '/register';
  static const String cashierRoute = '/cashier';
}
