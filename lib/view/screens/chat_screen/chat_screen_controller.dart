part of '../../../core/controller/_controller.dart';

class ChatScreenController extends GetxController {
  TextEditingController _text = TextEditingController();

  List<MessageData>? getMessages(UserModel friend) {
    return Get.put(ChatController()).messages.singleWhere((element) {
      return element.receiver.id == friend.id;
    }).messageData;
  }

  void sendOnClick(UserModel friend) async {
    if (await sendMessage(friend)) {
      addMessage(friend);
    } else {
      Get.snackbar('chat', 'cannot send the message');
    }
  }

  void addMessage(UserModel friend) {
    Get.put(ChatController()).addMessage(Messages(
      receiver: friend,
      senderId: _getSenderId,
      messageData: [MessageData(text: text.text, userId: _getSenderId)],
    ));
  }

  bool isFromSender(String senderId) {
    return senderId == _getSenderId;
  }

  Future<bool> sendMessage(UserModel friend) async {
    return await Get.put(WebSocketController()).sendMessage(
      text: text.text,
      senderId: _getSenderId,
      receiverId: friend.id.toString(),
    );
  }

  String get _getSenderId {
    return Get.put(UserStateController()).getUser!.id!.toString();
  }

  TextEditingController get text => _text;

  set text(TextEditingController value) {
    _text = value;
    update();
  }
}
