part of '_provider.dart';

class HomepageProvider extends ChangeNotifier {
  HomepageProvider() {
    print('HomepageProvider');
  }

  void signOutOnClick(context) {
    final user = Provider.of<UserStateProvider>(context, listen: false);
    SignOutHelper(context).signOut(user.getUser!.id!);
  }
}
