part of '../../../core/providers/_provider.dart';

class FriendScreenProvider extends ChangeNotifier {
  late BuildContext context;
  late UserStateProvider userState;
  late FriendProvider friendProvider;

  FriendScreenProvider(this.context) {
    userState = Provider.of<UserStateProvider>(context, listen: false);
    friendProvider = Provider.of<FriendProvider>(context, listen: false);
    isFriendEmpty();
  }

  void isFriendEmpty() {
    if (friendProvider.friend.isEmpty) {
      initializeFriend();
    }
  }

  void initializeFriend() async {
    print('initializeFriend');
    friendProvider.friend = await FriendServices.getFriends(
      userId: userState.getUser!.id!.toString(),
    );
    notifyListeners();
  }

  void searchNewFriendsOnClick() {
    showSearch(
      context: context,
      delegate: SearchBarWidget(
        addFriendOnClick: (UserModel user) => addFriendOnClick(user),
        backOnClick: () => initializeFriend(),
      ),
    );
  }

  void addFriendOnClick(UserModel friend) async {
    final user = Provider.of<UserStateProvider>(
      context,
      listen: false,
    );

    if (await FriendServices()
        .addFriend(userId: user.getUser!.id!, friendId: friend.id)) {
      SnackBarWidget().showGeneralSnackBar(
        text: "Success",
        context: context,
      );
      FriendSqliteHelper.addFriend(
        userId: user.getUser!.id!,
        friendId: friend.id,
      );
    }
  }
}
