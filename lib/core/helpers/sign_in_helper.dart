part of '_helpers.dart';

class SignInHelper {
  BuildContext context;

  SignInHelper(this.context);

  void signIn({email, password}) async {
    final response = await _getResponse(email, password);
    if (response != null) {
      UserSessionHelper().setCurrentUser(response);
      _navigate();
    }
  }

  Future<UserState?> _getResponse(email, password) {
    return UserServices().signIn(
      email: email,
      password: password,
    );
  }

  void _navigate() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const App(
          key: Key('App'),
        ),
      ),
      (route) => false,
    );
  }
}
