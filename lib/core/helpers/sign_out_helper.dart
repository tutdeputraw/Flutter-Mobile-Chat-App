part of '_helpers.dart';

class SignOutHelper {
  static void signOut(String id) async {
    if (await _getResponse(id)) {
      UserSessionHelper.clear();
      _navigate();
      _releaseController();
    }
  }

  static void _releaseController(){
    Get.delete<InitScreenController>();
    Get.delete<ChatListScreenController>();
    Get.delete<FriendScreenController>();
    Get.delete<ProfileScreenController>();
    Get.delete<WebSocketController>();
  }

  static Future<bool> _getResponse(String id) {
    return UserServices().signOut(id);
  }

  static void _navigate() {
    Get.offAll(const SignInScreen());
  }
}
