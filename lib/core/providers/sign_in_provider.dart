part of '_provider.dart';

class SignInProvider extends ChangeNotifier {
  BuildContext _context;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  SignInProvider(this._context);

  void signInOnClick() {
    SignInHelper(_context).signIn(email: email.text, password: password.text);
  }

  void signUpOnClick() {
    clearTextField();
    Navigator.push(
      _context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(key: Key('SignUp')),
      ),
    );
  }

  void clearTextField() {
    email = TextEditingController();
    password = TextEditingController();
  }

  TextEditingController get password => _password;

  set password(TextEditingController value) {
    _password = value;
    notifyListeners();
  }

  TextEditingController get email => _email;

  set email(TextEditingController value) {
    _email = value;
    notifyListeners();
  }
}
