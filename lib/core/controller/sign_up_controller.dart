part of '_controller.dart';

class SignUpController extends GetxController {
  void signUp({username, email, password}) async {
    if (await _getResponse(username, email, password)) {
      _signIn(email, password);
    }
  }

  void _signIn(email, password) {
    Get.put(SignInController()).signIn(
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
