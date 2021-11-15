part of '../../screens/_screen.dart';

class ProfileEditProfileComponent extends StatelessWidget {
  const ProfileEditProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.read<ProfileProvider>();

    return Container(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: value.editProfileOnClick,
        child: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
