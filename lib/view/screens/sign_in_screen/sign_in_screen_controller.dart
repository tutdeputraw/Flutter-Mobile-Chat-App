part of '../../../core/controller/_controller.dart';

class SignInScreenController extends GetxController {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  void signInOnClick() {
    Get.put(SignInController()).signIn(
      email: email.text,
      password: password.text,
    );
  }

  void signUpOnClick() {
    clearTextField();
    Get.to(const SignUpScreen(key: Key('SignUp')));
  }

  void clearTextField() {
    email = TextEditingController();
    password = TextEditingController();
  }

  TextEditingController get email => _email;

  set email(TextEditingController value) {
    _email = value;
    update();
  }

  TextEditingController get password => _password;

  set password(TextEditingController value) {
    _password = value;
    update();
  }
}
