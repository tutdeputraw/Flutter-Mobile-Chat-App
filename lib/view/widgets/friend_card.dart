part of '_widget.dart';

class FriendCardWidget extends StatelessWidget {
  final UserModel data;
  final Function? onTap;

  const FriendCardWidget({
    Key? key,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? () => onTap!() : null,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(data.imageUrl!),
          ),
          tileColor: Colors.white,
          title: Text(data.username),
        ),
      ),
    );
  }
}
