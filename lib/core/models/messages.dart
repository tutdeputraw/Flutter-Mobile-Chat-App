part of '_model.dart';

class Messages {
  String senderId;
  UserModel receiver;
  List<MessageData> messageData;

  Messages({
    required this.senderId,
    required this.receiver,
    required this.messageData,
  });
}
