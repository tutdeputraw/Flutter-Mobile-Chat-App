part of '_helpers.dart';

class SignOutHelper {
  BuildContext context;

  SignOutHelper(this.context);

  void signOut(String id) async {
    if (await _getResponse(id)) {
      UserSessionHelper().clear();
      _navigate();
    }
  }

  Future<bool> _getResponse(String id) {
    return UserServices().signOut(id);
  }

  void _navigate() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const App(
          key: Key('App'),
        ),
      ),
      (route) => false,
    );
  }
}
