part of '_controller.dart';

class FriendController extends GetxController {
  List<UserModel> _friend = [];

  List<UserModel> get friend => _friend;

  set friend(List<UserModel> value) {
    _friend = value;
    update();
  }
}
