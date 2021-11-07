part of '_provider.dart';

class SignInProvider extends ChangeNotifier {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  SignInProvider(){
    print('SignInProvider');
  }

  void signInOnClick(context) {
    SignInHelper(context).signIn(email: email.text, password: password.text);
  }

  void signUpOnClick(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(key: Key('SignUp')),
      ),
    );
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
