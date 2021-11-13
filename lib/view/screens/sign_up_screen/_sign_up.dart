part of '../../screens/_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SignUpProvider(context),
      child: Consumer<SignUpProvider>(
        builder: (context, value, _) => Scaffold(
          body: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: value.username,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 16,
                      ),
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
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
                    onPressed: value.signUpOnClick,
                    child: const Text('SIGN UP'),
                  ),
                  TextButton(
                    onPressed: value.signInOnClick,
                    child: const Text('BACK'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
