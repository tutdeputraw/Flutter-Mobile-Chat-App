part of '_local_widgets.dart';

class ProfileListTileComponent extends StatelessWidget {
  final Icon leading;
  final String title;
  final Function onTap;

  const ProfileListTileComponent({
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
        ),
        trailing: const Icon(
          Icons.navigate_next_rounded,
        ),
      ),
    );
  }
}
