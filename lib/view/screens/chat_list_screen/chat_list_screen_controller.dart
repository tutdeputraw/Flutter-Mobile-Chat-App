part of '../../../core/controller/_controller.dart';

class ChatListScreenController extends GetxController {
  final chatController = Get.put(ChatController());

  List<Messages> get getMessages {
    return chatController.messages;
  }

  void fabOnClick() {
    Get.to(const NewChatScreen(key: Key('NewChatScreen')));
  }

  void cardOnCLick(String friendId) {
    Get.to(ChatScreen(friendId: friendId));
  }

  String getFriendId(Messages data) {
    final userController = Get.put(UserStateController());

    if (data.senderId == userController.getUser!.id.toString()) {
      return data.receiverId;
    } else {
      return data.senderId;
    }
  }

  String getFriendName(String id) {
    final friend = Get.put(FriendController());

    return friend.getFriendNameById(id);
  }

  String getSubtitle(Messages data) {
    return data.messageData.last.text;
  }

  void searchOnClick(context) {
    showSearch(
      context: context,
      delegate: SearchPage(
        items: [],
        searchLabel: 'Search Chat',
        builder: (person) => const ListTile(
          title: Text('person.name'),
          subtitle: Text('person.surname'),
          trailing: Text('person.age yo'),
        ),
        filter: (t) => [''],
      ),
    );
  }
}
