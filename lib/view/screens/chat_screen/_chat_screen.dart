part of '../../screens/_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('CHAT'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
