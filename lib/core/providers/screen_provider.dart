part of '_provider.dart';

class ScreenProvider extends ChangeNotifier {
  int _page = 0;

  ScreenProvider() {
    print('ScreenProvider');
  }

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }

  Widget showScreen(context) {
    switch (_page) {
      case 0:
        return ChangeNotifierProvider(
          create: (_) => ChatProvider(context),
          child: const ChatScreen(key: Key('HomepageScreen')),
        );
      case 1:
        return const FriendsScreen(key: Key('SearchScreen'));
      case 2:
        return ChangeNotifierProvider(
          create: (_) => ProfileProvider(context),
          child: const ProfileScreen(key: Key('ProfileScreen')),
        );
      default:
        return const SizedBox();
    }
  }
}
