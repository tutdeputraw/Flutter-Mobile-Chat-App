part of '../../screens/_screen.dart';

class ProfileUsernameComponent extends StatelessWidget {
  const ProfileUsernameComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Joni Andrea',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
