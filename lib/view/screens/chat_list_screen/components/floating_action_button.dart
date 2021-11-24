part of '../../_screen.dart';

class ChatFloatingActionButtonComponent extends StatelessWidget {
  const ChatFloatingActionButtonComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChatListScreenController());

    return ElevatedButton(
      onPressed: controller.fabOnClick,
      child: const Icon(Icons.create_outlined),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
      ),
    );
  }
}
