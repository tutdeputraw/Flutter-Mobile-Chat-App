part of '_provider.dart';

enum state { authorize, unauthorize }

class UserStateProvider extends ChangeNotifier {
  UserState? _user;
  state? _appState;

  UserStateProvider() {
    init();
  }

  Widget showScreen() {
    switch (getAppState) {
      case state.authorize:
        return const InitScreen(key: Key('InitScreen'));
      case state.unauthorize:
        return const SignInScreen(key: Key('SignInScreen'));
      default:
        return const SizedBox(key: Key('SizedBox'));
    }
  }

  void init() async {
    await initiateState();
    if (getAppState == state.authorize) {
      await initiateUser();
    }
  }

  Future initiateUser() async {
    final user = await UserSessionHelper().getUser();
    setUser = user!;
  }

  Future initiateState() async {
    if (await UserSessionHelper().isContainUser()) {
      setAppState = state.authorize;
    } else {
      setAppState = state.unauthorize;
    }
  }

  state? get getAppState => _appState;

  set setAppState(state value) {
    _appState = value;
    notifyListeners();
  }

  UserState? get getUser => _user;

  set setUser(UserState value) {
    _user = value;
    notifyListeners();
  }
}
