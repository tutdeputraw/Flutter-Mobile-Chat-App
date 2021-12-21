part of '_controller.dart';

class SignOutController extends GetxController {
  void signOut(String id) async {
    if (await _getResponse(id)) {
      UserSession.clear();
      _navigate();
      _releaseController();
    }
  }

  void _releaseController() {
    Get.delete<UserStateController>();
    Get.delete<InitScreenController>();
    Get.delete<ChatListScreenController>();
    Get.delete<FriendScreenController>();
    Get.delete<ProfileScreenController>();
    Get.delete<WebSocketController>();
  }

  Future<bool> _getResponse(String id) {
    return UserServices().signOut(id);
  }

  void _navigate() {
    Get.offAll(const SignInScreen());
  }
}
