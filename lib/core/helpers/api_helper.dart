part of '_helpers.dart';

class ApiHelper {
  static void initializeFriends() async {
    final userStateController = Get.put(UserStateController());
    final friendController = Get.put(FriendController());

    friendController.friend = await FriendServices.getFriends(
      userId: userStateController.getUser!.id!.toString(),
    );
  }
}
