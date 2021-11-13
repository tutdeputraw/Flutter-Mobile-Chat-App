part of '../../screens/_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SignInProvider(context),
      child: Consumer<SignInProvider>(
        builder: (context, value, _) => Scaffold(
          body: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: value.email,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 16,
                    ),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: value.password,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 16,
                    ),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: value.signInOnClick,
                  child: const Text('SIGN IN'),
                ),
                TextButton(
                  onPressed: value.signUpOnClick,
                  child: const Text('SIGN UP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
