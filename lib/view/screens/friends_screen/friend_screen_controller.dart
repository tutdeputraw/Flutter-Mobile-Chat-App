part of '../../../core/controller/_controller.dart';

class FriendScreenController extends GetxController {
  final userStateController = Get.put(UserStateController());
  final friendController = Get.put(FriendController());

  void searchNewFriendsOnClick(context) {
    showSearch(
      context: context,
      delegate: SearchBarWidget(
        addFriendOnClick: (UserModel user) => addFriendOnClick(user),
        backOnClick: () => initializeFriend(),
      ),
    );
  }

  void initializeFriend() async {
    print('initializeFriend');
    friendController.friend = await FriendServices.getFriends(
      userId: userStateController.getUser!.id!.toString(),
    );
    update();
  }

  void addFriendOnClick(UserModel friend) async {
    if (await _addFriend(friend)) {
      Get.snackbar('Add friend', 'Success');
    }
  }

  Future<bool> _addFriend(UserModel friend) async {
    return await FriendServices.addFriend(
      userId: userStateController.getUser!.id!,
      friendId: friend.id,
    );
  }
}
