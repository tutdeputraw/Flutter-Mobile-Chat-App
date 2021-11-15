part of '../../screens/_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.read<ChatProvider>();

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Messages',
        ),
        actions: [
          IconButton(
            onPressed: value.searchOnClick,
            icon: const Icon(
              CupertinoIcons.search,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const ChatListComponent(key: Key('ChatList')),
            ),
          ),
        ],
      ),
      floatingActionButton: const ChatFloatingActionButtonComponent(
        key: Key('ChatFloatingActionButton'),
      ),
    );
  }
}
