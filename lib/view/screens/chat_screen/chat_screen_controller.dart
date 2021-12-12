part of '../../../core/controller/_controller.dart';

class ChatScreenController extends GetxController {
  TextEditingController _text = TextEditingController();
  ScrollController _scrollController = ScrollController();

  List<MessageData>? getMessages(UserModel friend) {
    return Get.put(ChatController()).messages.singleWhere((element) {
      return element.receiverId == friend.id.toString();
    }).messageData;
  }

  BubbleType getChatType(MessageData data) {
    final userController = Get.put(UserStateController());

    if (data.userId == userController.getUser!.id.toString()) {
      return BubbleType.sendBubble;
    } else {
      return BubbleType.receiverBubble;
    }
  }

  Color getBackgroundColor(MessageData data) {
    final userController = Get.put(UserStateController());

    if (data.userId == userController.getUser!.id.toString()) {
      return Colors.white;
    } else {
      return Colors.cyan[300]!;
    }
  }

  Alignment getAlignment(MessageData data) {
    final userController = Get.put(UserStateController());

    if (data.userId == userController.getUser!.id.toString()) {
      return Alignment.topRight;
    } else {
      return Alignment.topLeft;
    }
  }

  String getId(String id) {
    final userController = Get.put(UserStateController());
    print('userController.getUser!.id.toString(): ' +
        userController.getUser!.id.toString());
    print('id: ' + id);
    if (id == userController.getUser!.id.toString()) {
      return userController.getUser!.id.toString();
    } else {
      return id;
    }
  }

  void sendOnClick(String friendId) async {
    autoScrollToTheEndOfTheScreen();
    if (await sendMessage(friendId)) {
      addMessage(friendId);
    } else {
      Get.snackbar('chat', 'cannot send the message');
    }
    removeText();
  }

  void autoScrollToTheEndOfTheScreen() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent + 1000,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 300),
    );
  }

  void removeText() {
    text.text = '';
    update();
  }

  void addMessage(String friendId) {
    Get.put(ChatController()).addMessage(
      Messages(
        receiverId: friendId,
        senderId: _getSenderId,
        messageData: [MessageData(text: text.text, userId: _getSenderId)],
        dateTime: DateTime.now(),
      ),
    );
  }

  String getFriendName(String id) {
    final friend = Get.put(FriendController());

    return friend.getFriendNameById(id);
  }

  bool isFromSender(String senderId) {
    return senderId == _getSenderId;
  }

  Future<bool> sendMessage(String friendId) async {
    return await Get.put(WebSocketController()).sendMessage(
      text: text.text,
      senderId: _getSenderId,
      receiverId: friendId.toString(),
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

  ScrollController get scrollController => _scrollController;

  set scrollController(ScrollController value) {
    _scrollController = value;
    update();
  }
}
