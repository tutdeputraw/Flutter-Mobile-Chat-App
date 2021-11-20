part of '../../screens/_screen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.read<ChatListScreenProvider>();

    return Scaffold(
      appBar: AppBar(
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => Text('data: $i'),
      ),
      floatingActionButton: const ChatFloatingActionButtonComponent(
        key: Key('ChatFloatingActionButton'),
      ),
    );
  }
}
