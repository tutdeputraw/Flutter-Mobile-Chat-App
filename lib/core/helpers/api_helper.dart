part of '_helpers.dart';

class ApiHelper {
  static void initializeFriends() async {
    final userStateController = Get.put(UserStateController());
    final friendController = Get.put(FriendController());

    friendController.friend = await FriendServices.getFriends(
      userId: userStateController.getUser!.id!.toString(),
    );
  }

  static void initializeUser() async {
    final userInfo = Get.put(UserController());
    final userState = Get.put(UserStateController());

    userInfo.userInfo = (await UserServices().setUserInfo(
      userState.getUser!.id!.toString(),
    ))!;
  }
}
