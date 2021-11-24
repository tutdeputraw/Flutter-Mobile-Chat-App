part of '../../screens/_screen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initScreenController = Get.put(InitScreenController());

    return GetBuilder(
      init: InitScreenController(),
      builder: (_) => Scaffold(
        body: initScreenController.showScreen(),
        bottomNavigationBar: const BottomNavigationWidget(
          key: Key('HomepageBottomNavBar'),
        ),
      ),
    );
  }
}
