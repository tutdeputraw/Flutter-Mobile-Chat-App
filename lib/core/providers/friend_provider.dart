part of '_provider.dart';

class FriendProvider extends ChangeNotifier {
  List<Friend> _friend = [];

  List<Friend> get friend => _friend;

  set friend(List<Friend> value) {
    _friend = value;
    notifyListeners();
  }
}
