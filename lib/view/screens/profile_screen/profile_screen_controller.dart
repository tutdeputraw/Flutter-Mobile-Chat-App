part of '../../../core/controller/_controller.dart';

class ProfileScreenController extends GetxController {
  final userStateController = Get.put(UserStateController());

  void goToPage() async {
    Get.to(const ProfileScreen());
  }

  void signOutOnCLick() {
    Get.put(SignOutController()).signOut(
      userStateController.getUser!.id.toString(),
    );
  }

  String getUsername() {
    return Get.put(UserController()).userInfo.username;
  }

  void settingsOnClick() {}

  void editProfileOnClick() {
    Get.to(const EditProfileScreen(key: Key('EditProfileScreen')));
  }
}
