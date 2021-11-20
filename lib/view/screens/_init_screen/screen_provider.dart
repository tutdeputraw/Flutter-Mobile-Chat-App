part of '../../../core/providers/_provider.dart';

class ScreenProvider extends ChangeNotifier {
  BuildContext context;
  int _page = 0;

  ScreenProvider(this.context) {
    _apiHelper();
  }

  void _apiHelper() {
    ApiHelper(context).initializeFriends();
  }

  Widget showScreen() {
    switch (_page) {
      case 0:
        return ChangeNotifierProvider(
          create: (context) => ChatListScreenProvider(context),
          child: const ChatListScreen(key: Key('ChatProvider')),
        );
      case 1:
        return ChangeNotifierProvider(
          create: (context) => FriendScreenProvider(context),
          child: const FriendsScreen(key: Key('FriendsScreen')),
        );
      case 2:
        return ChangeNotifierProvider(
          create: (context) => ProfileScreenProvider(context),
          child: const ProfileScreen(key: Key('ProfileScreen')),
        );
      default:
        return const SizedBox();
    }
  }

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }
}
