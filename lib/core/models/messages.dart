part of '_model.dart';

class Messages {
  String senderId;
  String receiverId;
  List<MessageData> messageData;

  Messages({
    required this.senderId,
    required this.receiverId,
    required this.messageData,
  });
}
