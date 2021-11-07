part of '_helpers.dart';

class SignUpHelper {
  BuildContext context;

  SignUpHelper(this.context);

  void signUp({username, email, password}) async {
    if (await _getResponse(username, email, password)) {
      _signIn(email, password);
    }
  }

  void _signIn(email, password) {
    SignInHelper(context).signIn(
      email: email,
      password: password,
    );
  }

  Future<bool> _getResponse(username, email, password) {
    return UserServices().signUp(
      username: username,
      email: email,
      password: password,
    );
  }
}
