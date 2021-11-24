part of '_controller.dart';

enum state { authorize, unauthorize }

class UserStateController extends GetxController {
  UserState? _user;
  state? _appState;

  @override
  void onInit() async {
    super.onInit();
    await initiateState();
    if (getAppState == state.authorize) {
      await initiateUser();
    }
  }

  Widget get setHome {
    switch (getAppState) {
      case state.authorize:
        return const InitScreen(key: Key('InitScreen'));
      case state.unauthorize:
        return const SignInScreen(key: Key('SignInScreen'));
      default:
        return const SizedBox(key: Key('SizedBox'));
    }
  }

  Widget get loading {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  Future initiateUser() async {
    final user = await UserSessionHelper.getUser();
    setUser = user!;
  }

  Future initiateState() async {
    if (await UserSessionHelper.isContainUser()) {
      setAppState = state.authorize;
    } else {
      setAppState = state.unauthorize;
    }
  }

  state? get getAppState => _appState;

  set setAppState(state value) {
    _appState = value;
    update();
  }

  UserState? get getUser => _user;

  set setUser(UserState value) {
    _user = value;
    update();
  }
}
