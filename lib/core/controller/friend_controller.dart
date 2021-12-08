part of '_controller.dart';

class FriendController extends GetxController {
  List<UserModel> _friend = [];

  @override
  void onInit() async {
    await initializeFriends();
    super.onInit();
  }

  Future<void> initializeFriends() async {
    final userStateController = Get.put(UserStateController());
    print('userStateController.getUser!.id!.toString(): ' +
        userStateController.getUser!.id!.toString());

    friend = await FriendServices.getFriends(
      userId: userStateController.getUser!.id!.toString(),
    );
  }

  List<UserModel> get friend => _friend;

  set friend(List<UserModel> value) {
    _friend = value;
    update();
  }

  String getFriendNameById(String id) {
    return friend.singleWhere((element) {
      return element.id.toString() == id;
    }).username;
  }
}
