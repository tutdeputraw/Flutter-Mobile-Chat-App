part of '../../../core/providers/_provider.dart';

class ChatScreenProvider extends ChangeNotifier {
  TextEditingController _text = TextEditingController();
  late Friend _friend;

  ChatScreenProvider(Friend friend) {
    this.friend = friend;
  }

  void sendOnClick() {
    print('sendOnClick');
    print(text.text);
  }

  void sendMessage() {}

  Friend get friend => _friend;

  set friend(Friend value) {
    _friend = value;
    notifyListeners();
  }

  TextEditingController get text => _text;

  set text(TextEditingController value) {
    _text = value;
    notifyListeners();
  }
}
