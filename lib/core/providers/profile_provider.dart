part of '_provider.dart';

class ProfileProvider extends ChangeNotifier {
  BuildContext context;

  ProfileProvider(this.context) {
    print('PROFILE');
  }

  void signOutOnCLick() {
    final user = Provider.of<UserStateProvider>(context, listen: false);
    SignOutHelper(context).signOut(user.getUser!.id.toString());
  }

  void settingsOnClick() {}

  void editProfileOnClick(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const EditProfileScreen()),
    );
  }
}
