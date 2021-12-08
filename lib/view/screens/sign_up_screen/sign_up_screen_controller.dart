part of '../../../core/controller/_controller.dart';

class SignUpScreenController extends GetxController {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  void signInOnClick() {
    Get.back();
  }

  void signUpOnClick() {
    Get.put(SignUpController()).signUp(
      username: username.text,
      email: email.text,
      password: password.text,
    );
  }

  TextEditingController get username => _username;

  set username(TextEditingController value) {
    _username = value;
    update();
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
