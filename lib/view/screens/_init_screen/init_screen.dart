part of '../../screens/_screen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomepageProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
      ],
      child: Scaffold(
        body: Consumer<BottomNavigationProvider>(
          builder: (context, value, _) {
            switch (value.page) {
              case 0:
                return const HomepageScreen(key: Key('HomepageScreen'));
              case 1:
                return const SearchScreen(key: Key('SearchScreen'));
              case 2:
                return const AddScreen(key: Key('AddScreen'));
              default:
                return const ProfileScreen(key: Key('ProfileScreen'));
            }
          },
        ),
        bottomNavigationBar: const BottomNavigationWidget(
          key: Key('HomepageBottomNavBar'),
        ),
      ),
    );
  }
}
