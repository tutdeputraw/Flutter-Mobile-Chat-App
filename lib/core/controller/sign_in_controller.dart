part of '_controller.dart';

class SignInController extends GetxController {
  void signIn({required String email, required String password}) async {
    final response = await _getResponse(email, password);
    if (response != null) {
      UserSession.setCurrentUser(response);
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
    Get.offAll(const InitScreen(
      key: Key('InitScreen'),
    ));
  }
}
