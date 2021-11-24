part of '../../_screen.dart';

class ProfileButtonListComponent extends StatelessWidget {
  const ProfileButtonListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileScreenController());

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          ProfileListileWidget(
            leading: const Icon(
              Icons.settings_rounded,
            ),
            title: 'Settings',
            onTap: () => controller.settingsOnClick,
          ),
          ProfileListileWidget(
            leading: const Icon(
              Icons.logout_rounded,
            ),
            title: 'Sign Out',
            onTap: () => controller.signOutOnCLick,
          ),
        ],
      ),
    );
  }
}
