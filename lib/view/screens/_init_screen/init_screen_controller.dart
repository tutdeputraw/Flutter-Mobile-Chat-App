part of '../../../core/controller/_controller.dart';

class InitScreenController extends GetxController {
  int _page = 0;

  @override
  void onInit() {
    super.onInit();
    ApiHelper.initializeFriends();
    ApiHelper.initializeUser();

    Get.put(WebSocketController());
    Get.put(ChatController());
    Get.put(ProfileScreenController());
    Get.put(FriendScreenController());
  }

  Widget showScreen() {
    switch (_page) {
      case 0:
        return const ChatListScreen(key: Key('ChatProvider'));
      case 1:
        return const FriendsScreen(key: Key('FriendsScreen'));
      case 2:
        return const ProfileScreen(key: Key('ProfileScreen'));
      default:
        return const SizedBox();
    }
  }

  int get page => _page;

  set page(int value) {
    _page = value;
    update();
  }
}
