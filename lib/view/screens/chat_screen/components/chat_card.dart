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
        type: controller.getChatType(data),
      ),
      alignment: controller.getAlignment(data),
      backGroundColor: controller.getBackgroundColor(data),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Text(data.text),
      ),
    );
  }
}
