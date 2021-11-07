part of '_helpers.dart';

class SignOutHelper {
  BuildContext context;

  SignOutHelper(this.context);

  void signOut(int id) async {
    if (await _getResponse(id.toString())) {
      UserSessionHelper().clear();
      _navigate();
    }
  }

  Future<bool> _getResponse(id) {
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
