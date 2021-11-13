part of '../../screens/_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'PROFILE',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            ProfileImageComponent(key: Key('ProfileImage')),
            ProfileUsernameComponent(key: Key('ProfileUsername')),
            ProfileEditProfileComponent(key: Key('ProfileEditProfile')),
            ProfileButtonListComponent(key: Key('ProfileButtonList')),
          ],
        ),
      ),
    );
  }
}
