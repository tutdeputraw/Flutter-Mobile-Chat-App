part of '../../screens/_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(SignInScreenController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GetBuilder(
              init: SignInScreenController(),
              builder: (_) => TextFormField(
                controller: cartController.email,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16,
                  ),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GetBuilder(
              init: SignInScreenController(),
              builder: (_) => TextFormField(
                controller: cartController.password,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16,
                  ),
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: cartController.signInOnClick,
              child: const Text('SIGN IN'),
            ),
            TextButton(
              onPressed: cartController.signUpOnClick,
              child: const Text('SIGN UP'),
            ),
          ],
        ),
      ),
    );
  }
}
