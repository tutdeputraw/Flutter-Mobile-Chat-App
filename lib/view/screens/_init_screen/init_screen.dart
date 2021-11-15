part of '../../screens/_screen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WebSocketProvider(context)),
        ChangeNotifierProvider(create: (_) => ScreenProvider()),
      ],
      child: Scaffold(
        body: Consumer<ScreenProvider>(
          builder: (context, value, _) => value.showScreen(context),
        ),
        bottomNavigationBar: Container(
          color: Colors.black87,
          child: const BottomNavigationWidget(
            key: Key('HomepageBottomNavBar'),
          ),
        ),
      ),
    );
  }
}
