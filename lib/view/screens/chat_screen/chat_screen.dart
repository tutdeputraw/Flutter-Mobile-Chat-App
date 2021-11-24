part of '../../screens/_screen.dart';

class ChatScreen extends StatelessWidget {
  final UserModel friend;

  const ChatScreen({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatController());

    return Scaffold(
      appBar: AppBar(
        title: Text(friend.username),
      ),
      body: GetBuilder(
        init: ChatController(),
        builder: (_) => controller.getMessageData(friend.id).isNotEmpty
            ? ListView.builder(
                itemCount: controller.getMessageData(friend.id).length,
                itemBuilder: (context, index) => ChatScreenCardComponent(
                  data: controller.getMessageData(friend.id)[index],
                ),
              )
            : const SizedBox(),
      ),
      bottomNavigationBar: ChatBarComponent(
        key: const Key('ChatBar'),
        friend: friend,
      ),
    );
  }
}
