part of '../../screens/_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.watch<ChatScreenProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(value.friend.name),
      ),
      bottomNavigationBar: const ChatBarComponent(
        key: Key('ChatBar'),
      ),
    );
  }
}
