part of '../../screens/_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signUpController = Get.put(SignUpScreenController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GetBuilder(
                init: SignUpScreenController(),
                builder: (_) => TextFormField(
                  controller: signUpController.username,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 16,
                    ),
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GetBuilder(
                init: SignUpScreenController(),
                builder: (_) => TextFormField(
                  controller: signUpController.email,
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
                init: SignUpScreenController(),
                builder: (_) => TextFormField(
                  controller: signUpController.password,
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
                onPressed: signUpController.signUpOnClick,
                child: const Text('SIGN UP'),
              ),
              TextButton(
                onPressed: signUpController.signInOnClick,
                child: const Text('BACK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
