part of '../../_screen.dart';

class ChatScreenCardComponent extends StatelessWidget {
  final MessageData data;

  const ChatScreenCardComponent({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatScreenController());

    return ChatBubble(
      clipper: ChatBubbleClipper6(
        type: controller.isFromSender(data.userId)
            ? BubbleType.sendBubble
            : BubbleType.receiverBubble,
      ),
      alignment: Alignment.topRight,
      margin: const EdgeInsets.all(8),
      backGroundColor: Colors.white,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(data.text),
      ),
    );
  }
}
