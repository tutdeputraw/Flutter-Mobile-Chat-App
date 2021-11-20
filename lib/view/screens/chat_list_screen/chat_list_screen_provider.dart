part of '../../../core/providers/_provider.dart';

class ChatListScreenProvider extends ChangeNotifier {
  late BuildContext context;

  ChatListScreenProvider(this.context) {
    print('ChatProvider');
    Provider.of<WebSocketProvider>(context, listen: false);
  }

  void fabOnClick() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NewChatScreen(
          key: Key('NewChatScreen'),
        ),
      ),
    );
  }

  void searchOnClick() {
    showSearch(
      context: context,
      delegate: SearchPage(
        items: [],
        searchLabel: 'Search Chat',
        builder: (person) => const ListTile(
          title: Text('person.name'),
          subtitle: Text('person.surname'),
          trailing: Text('person.age yo'),
        ),
        filter: (t) => [''],
      ),
    );
  }
}
