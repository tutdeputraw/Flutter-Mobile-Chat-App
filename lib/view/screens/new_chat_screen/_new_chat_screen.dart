part of '../../screens/_screen.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New chat'),
      ),
      body: Consumer<FriendProvider>(
        builder: (context, value, _) => value.friend.isNotEmpty
            ? ListView.builder(
                itemCount: value.friend.length,
                itemBuilder: (context, index) => _card(
                  context: context,
                  data: value.friend[index],
                ),
              )
            : const Text('You have no friend:('),
      ),
    );
  }

  Widget _card({required Friend data, required BuildContext context}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
              create: (BuildContext context) => ChatScreenProvider(data),
              child: const ChatScreen(),
            ),
          ),
          (Route<dynamic> route) => route.isFirst,
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: ListTile(
          tileColor: Colors.white,
          title: Text(data.name),
        ),
      ),
    );
  }
}
