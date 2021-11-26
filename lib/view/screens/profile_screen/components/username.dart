part of '../../_screen.dart';

class ProfileUsernameComponent extends StatelessWidget {
  const ProfileUsernameComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());

    return Container(
      child: Center(
        child: Text(controller.userInfo.username),
      ),
    );
  }
}
