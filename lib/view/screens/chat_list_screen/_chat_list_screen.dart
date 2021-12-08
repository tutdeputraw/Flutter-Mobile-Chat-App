part of '../../screens/_screen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatListScreenController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Messages'),
        actions: [
          IconButton(
            onPressed: () => controller.searchOnClick(context),
            icon: const Icon(
              CupertinoIcons.search,
            ),
          )
        ],
      ),
      body: GetBuilder(
        init: ChatController(),
        builder: (_) => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: controller.getMessages.length,
          itemBuilder: (context, index) => ChatListScreenCardComponent(
            data: controller.getMessages[index],
          ),
          separatorBuilder: (context, index) => const Divider(
            height: 16,
            color: Colors.transparent,
          ),
        ),
      ),
      floatingActionButton: const ChatFloatingActionButtonComponent(
        key: Key('ChatFloatingActionButton'),
      ),
    );
  }
}
