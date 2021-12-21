part of '_controller.dart';

enum state { authorize, unauthorize }

class UserStateController extends GetxController {
  UserState? _user;
  state? _appState;

  @override
  Future<void> onInit() async {
    super.onInit();
    await initiateState();
    if (getAppState == state.authorize) {
      print('userstate Future<void> onInit() async {');
      await initiateUser();
      await initializeUser();
    }
  }

  Future<void> initializeUser() async {
    final userInfo = Get.put(UserController());
    final userState = Get.put(UserStateController());

    print('userState.getUser!.id ${userState.getUser!.id}');

    userInfo.userInfo = (await UserServices().setUserInfo(
      userState.getUser!.id!.toString(),
    ))!;
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
    final user = await UserSession.getUser();
    setUser = user!;
  }

  Future initiateState() async {
    if (await UserSession.isContainUser()) {
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
