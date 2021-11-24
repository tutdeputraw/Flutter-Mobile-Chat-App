part of '../../../core/controller/_controller.dart';

class ProfileScreenController extends GetxController {
  final userStateController = Get.put(UserStateController());

  void signOutOnCLick() {
    SignOutHelper.signOut(userStateController.getUser!.id.toString());
  }

  void settingsOnClick() {}

  void editProfileOnClick() {
    Get.to(const EditProfileScreen(key: Key('EditProfileScreen')));
  }
}
