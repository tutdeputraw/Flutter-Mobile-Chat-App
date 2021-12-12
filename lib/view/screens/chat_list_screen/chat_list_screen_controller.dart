part of '../../../core/controller/_controller.dart';

class ChatListScreenController extends GetxController {
  final chatController = Get.put(ChatController());
  final friendController = Get.put(FriendController());

  List<Messages> get getMessages {
    return chatController.messages;
  }

  String getImageURL(Messages data) {
    final controller = Get.put(FriendController());
    return controller.getUserById(data.receiverId).imageUrl!;
  }

  void fabOnClick() {
    Get.to(const NewChatScreen(key: Key('NewChatScreen')));
  }

  void cardOnCLick(String friendId) {
    final controller = Get.put(FriendController());
    Get.to(ChatScreen(
      friend: controller.getUserById(friendId),
    ));
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
      delegate: SearchPage<Messages>(
        items: getMessages,
        searchLabel: 'Search Chat',
        builder: (person) => ChatListScreenCardComponent(
          data: getMessages[
              chatController.getMessageIndexByUserId(person.receiverId)],
        ),
        filter: (t) => [friendController.getFriendNameById(t.receiverId)],
      ),
    );
  }
}
