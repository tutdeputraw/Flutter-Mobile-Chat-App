part of '../../_screen.dart';

class ChatListScreenCardComponent extends StatelessWidget {
  final Messages data;

  const ChatListScreenCardComponent({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatListScreenController());

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      onTap: () => controller.cardOnCLick(data.receiver),
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage('https://picsum.photos/250?image=28'),
      ),
      title: Text(data.receiver.username),
      subtitle: Text(data.messageData.last.text),
    );
  }
}
