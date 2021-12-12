part of '../../screens/_screen.dart';

class ChatScreen extends StatelessWidget {
  final UserModel friend;

  const ChatScreen({
    Key? key,
    required this.friend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatController());
    final chatController = Get.put(ChatScreenController());

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(24),
              onTap: () => Get.back(),
              child: Container(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_outlined,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                        friend.imageUrl!,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(chatController.getFriendName(friend.id.toString())),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: GetBuilder(
        init: ChatController(),
        builder: (_) => controller
                .getMessageData(friend.id.toString())
                .isNotEmpty
            ? ListView.separated(
                controller: chatController.scrollController,
                padding: const EdgeInsets.all(16),
                itemCount:
                    controller.getMessageData(friend.id.toString()).length,
                itemBuilder: (context, index) => ChatScreenCardComponent(
                  data: controller.getMessageData(friend.id.toString())[index],
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
        friendId: friend.id.toString(),
      ),
    );
  }
}
