part of '_local_widgets.dart';

class ProfileListileWidget extends StatelessWidget {
  Icon leading;
  String title;
  Function onTap;

  ProfileListileWidget({
    Key? key,
    required this.leading,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
        trailing: const Icon(
          Icons.navigate_next_rounded,
          color: Colors.white70,
        ),
      ),
    );
  }
}
