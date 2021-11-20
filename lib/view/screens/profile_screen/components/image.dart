part of '../../_screen.dart';

class ProfileImageComponent extends StatelessWidget {
  const ProfileImageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const CircleAvatar(
        backgroundImage: NetworkImage('https://picsum.photos/250?image=25'),
        radius: 50,
      ),
    );
  }
}
