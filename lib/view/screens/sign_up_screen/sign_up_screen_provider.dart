part of '../../../core/providers/_provider.dart';

class SignUpScreenProvider extends ChangeNotifier {
  BuildContext _context;
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  SignUpScreenProvider(this._context);

  TextEditingController get username => _username;

  void signInOnClick() {
    Navigator.pop(_context);
  }

  void signUpOnClick() {
    SignUpHelper(_context).signUp(
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
