part of '_provider.dart';

class SignUpProvider extends ChangeNotifier {
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  SignUpProvider() {
    print('SignUpProvider');
  }

  TextEditingController get username => _username;

  void signInOnClick(context) {
    Navigator.pop(context);
  }

  void signUpOnClick(context) {
    SignUpHelper(context).signUp(
      username: username.text,
      email: email.text,
      password: password.text,
    );
  }

  set username(TextEditingController value) {
    _username = value;
    notifyListeners();
  }

  TextEditingController get email => _email;

  set email(TextEditingController value) {
    _email = value;
    notifyListeners();
  }

  TextEditingController get password => _password;

  set password(TextEditingController value) {
    _password = value;
    notifyListeners();
  }
}
