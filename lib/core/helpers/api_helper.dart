part of '_helpers.dart';

class ApiHelper {
  BuildContext context;

  ApiHelper(this.context);

  void initializeFriends() async {
    final userState = Provider.of<UserStateProvider>(context, listen: false);
    final friendProvider = Provider.of<FriendProvider>(context, listen: false);

    friendProvider.friend = await FriendServices.getFriends(
      userId: userState.getUser!.id!.toString(),
    );
  }
}
