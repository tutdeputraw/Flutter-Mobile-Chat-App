part of '_helpers.dart';

class SignUpHelper {
  static void signUp({username, email, password}) async {
    if (await _getResponse(username, email, password)) {
      _signIn(email, password);
    }
  }

  static void _signIn(email, password) {
    SignInHelper().signIn(
      email: email,
      password: password,
    );
  }

  static Future<bool> _getResponse(username, email, password) {
    return UserServices().signUp(
      username: username,
      email: email,
      password: password,
    );
  }
}
