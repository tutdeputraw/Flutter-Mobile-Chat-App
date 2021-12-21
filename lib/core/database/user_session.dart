part of '_database.dart';

class UserSession {
  static final Future<SharedPreferences> _prefs =
      SharedPreferences.getInstance();

  static void setCurrentUser(UserState user) async {
    final prefs = await _prefs;
    prefs.setString('user-token', user.token!);
    prefs.setInt('user-id', user.id!);
  }

  static void clear() async {
    final prefs = await _prefs;
    prefs.remove('user-token');
    prefs.remove('user-id');
  }

  static Future<UserState?> getUser() async {
    final prefs = await _prefs;
    return UserState(
      id: prefs.getInt('user-id'),
      token: prefs.getString('user-token'),
    );
  }

  static Future<String?> getUserToken() async {
    final prefs = await _prefs;
    return prefs.getString('user-token');
  }

  static Future<int?> getUserId() async {
    final prefs = await _prefs;
    return prefs.getInt('user-id');
  }

  static Future<bool> isContainUser() async {
    final prefs = await _prefs;
    return prefs.containsKey('user-token') && prefs.containsKey('user-id');
  }
}
