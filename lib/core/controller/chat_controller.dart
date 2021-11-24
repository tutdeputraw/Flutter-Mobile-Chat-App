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
    getMessage(updatedMessage.receiver.id)
        .messageData
        .add(updatedMessage.messageData.first);
    update();
  }

  void _createMessage(Messages messages) {
    this.messages.add(messages);
    update();
  }

  int getMessageIndex(int receiverId) {
    return messages.indexWhere((element) {
      // return element.receiver.id == messages.receiver.id;
      return element.receiver.id == receiverId;
    });
  }

  Messages getMessage(int receiverId) {
    // return this.messages[getMessageIndex(messages)];
    // int index = getMessageIndex(receiverId);
    // if (index >= 0) {
    //
    // }
    return messages[getMessageIndex(receiverId)];
  }

  List<MessageData> getMessageData(int receiverId) {
    int index = getMessageIndex(receiverId);
    if (index >= 0) {
      return messages[getMessageIndex(receiverId)].messageData;
    } else {
      return [];
    }
  }

  bool isMessagesExist(Messages messages) {
    if (getMessageIndex(messages.receiver.id) >= 0) {
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
