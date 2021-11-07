part of '_helpers.dart';

class UserSessionHelper {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void setCurrentUser(UserState user) async {
    final prefs = await _prefs;
    prefs.setString('user-token', user.token!);
    prefs.setInt('user-id', user.id!);
  }

  void clear() async {
    final prefs = await _prefs;
    prefs.remove('user-token');
    prefs.remove('user-id');
  }

  Future<UserState?> getUser() async {
    final prefs = await _prefs;
    return UserState(
      id: prefs.getInt('user-id'),
      token: prefs.getString('user-token'),
    );
  }

  Future<String?> getUserToken() async {
    final prefs = await _prefs;
    return prefs.getString('user-token');
  }

  Future<int?> getUserId() async {
    final prefs = await _prefs;
    return prefs.getInt('user-id');
  }

  Future<bool> isContainUser() async {
    final prefs = await _prefs;
    return prefs.containsKey('user-token') && prefs.containsKey('user-id');
  }
}
