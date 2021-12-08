part of '../../screens/_screen.dart';

class ChatScreen extends StatelessWidget {
  final String friendId;

  const ChatScreen({
    Key? key,
    required this.friendId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatController());
    final chatController = Get.put(ChatScreenController());

    return Scaffold(
      appBar: AppBar(
        title: Text(chatController.getFriendName(friendId)),
      ),

      body: GetBuilder(
        init: ChatController(),
        builder: (_) => controller.getMessageData(friendId).isNotEmpty
            ? ListView.builder(
                itemCount: controller.getMessageData(friendId).length,
                itemBuilder: (context, index) => ChatScreenCardComponent(
                  data: controller.getMessageData(friendId)[index],
                ),
              )
            : const SizedBox(),
      ),
      bottomNavigationBar: ChatBarComponent(
        key: const Key('ChatBar'),
        friendId: friendId,
      ),
    );
  }
}
