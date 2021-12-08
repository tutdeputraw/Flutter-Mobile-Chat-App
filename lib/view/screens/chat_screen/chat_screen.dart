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
            ? ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: controller.getMessageData(friendId).length,
                itemBuilder: (context, index) => ChatScreenCardComponent(
                  data: controller.getMessageData(friendId)[index],
                ),
                separatorBuilder: (context, index) => const Divider(
                  height: 16,
                  color: Colors.transparent,
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
