import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sopos_mobile/shared/domain/models/auth_response.dart';

class LocalStorageService {
  static const String KEY_AUTH_DATA = 'auth_data';

  Future<void> saveAuthData(AuthData authData) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(KEY_AUTH_DATA, json.encode(authData.toJson()));
  }

  Future<AuthData?> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final String? authDataString = prefs.getString(KEY_AUTH_DATA);
    if (authDataString != null) {
      return AuthData.fromJson(json.decode(authDataString));
    }
    return null;
  }

  Future<void> clearAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(KEY_AUTH_DATA);
  }
}