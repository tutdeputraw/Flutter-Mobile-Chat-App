part of '../../screens/_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileScreenController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://picsum.photos/250?image=25',
                ),
                radius: 50,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(controller.getUsername()),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: controller.editProfileOnClick,
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ThemeData().scaffoldBackgroundColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black87),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  ProfileListTileComponent(
                    leading: const Icon(
                      Icons.settings_rounded,
                    ),
                    title: 'Settings',
                    onTap: () => controller.settingsOnClick,
                  ),
                  ProfileListTileComponent(
                    leading: const Icon(
                      Icons.logout_rounded,
                    ),
                    title: 'Sign Out',
                    onTap: () => controller.signOutOnCLick,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
