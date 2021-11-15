part of '../../screens/_screen.dart';

class ChatListComponent extends StatelessWidget {
  const ChatListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, i) => Text('data: $i'),
    );
  }
}
