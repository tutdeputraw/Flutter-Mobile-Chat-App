part of '../../screens/_screen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ScreenProvider(),
      child: Scaffold(
        body: Consumer<ScreenProvider>(
          builder: (context, value, _) => value.showScreen(context),
        ),
        bottomNavigationBar: const BottomNavigationWidget(
          key: Key('HomepageBottomNavBar'),
        ),
      ),
    );
  }
}
