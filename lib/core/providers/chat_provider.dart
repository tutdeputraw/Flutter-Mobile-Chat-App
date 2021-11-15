part of '_provider.dart';

class ChatProvider extends ChangeNotifier {
  ChatProvider(context) {
    print('ChatProvider');
    Provider.of<WebSocketProvider>(context, listen: false);
  }

  void fabOnClick() {
    print('fabOnClick');
  }

  void searchOnClick() {
    print('searchOnClick');
  }
}
