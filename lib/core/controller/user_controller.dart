part of '_controller.dart';

class UserController extends GetxController {
  late UserModel _userInfo;

  UserModel get userInfo => _userInfo;

  set userInfo(UserModel value) {
    _userInfo = value;
    update();
  }
}
