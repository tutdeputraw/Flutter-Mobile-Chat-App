part of '_provider.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }

  GlobalKey<CurvedNavigationBarState> get bottomNavigationKey =>
      _bottomNavigationKey;

  set bottomNavigationKey(GlobalKey<CurvedNavigationBarState> value) {
    _bottomNavigationKey = value;
    notifyListeners();
  }
}
