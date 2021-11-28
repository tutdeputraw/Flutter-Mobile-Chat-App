part of '_controller.dart';

class ChatController extends GetxController {
  List<Messages> _messages = [];

  void addMessage(Messages messages) {
    if (isMessagesExist(messages)) {
      _updateMessage(messages);
      print('_updateMessage');
    } else {
      _createMessage(messages);
      print('_createMessage');
    }
  }

  void _updateMessage(Messages updatedMessage) {
    getMessage(updatedMessage.receiverId)
        .messageData
        .add(updatedMessage.messageData.first);
    update();
  }

  void _createMessage(Messages messages) {
    this.messages.add(messages);
    update();
  }

  int getMessageIndex(String receiverId) {
    return messages.indexWhere((element) {
      return element.receiverId == receiverId;
    });
  }

  Messages getMessage(String receiverId) {
    return messages[getMessageIndex(receiverId)];
  }

  List<MessageData> getMessageData(String receiverId) {
    int index = getMessageIndex(receiverId);
    if (index >= 0) {
      return messages[getMessageIndex(receiverId)].messageData;
    } else {
      return [];
    }
  }

  bool isMessagesExist(Messages messages) {
    if (getMessageIndex(messages.receiverId) >= 0) {
      return true;
    } else {
      return false;
    }
  }

  List<Messages> get messages => _messages;

  set messages(List<Messages> value) {
    _messages = value;
    update();
  }
}
