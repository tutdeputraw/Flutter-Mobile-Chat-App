part of '../../screens/_screen.dart';

class ChatFloatingActionButtonComponent extends StatelessWidget {
  const ChatFloatingActionButtonComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.read<ChatProvider>();

    return ElevatedButton(
      onPressed: value.fabOnClick,
      child: const Icon(Icons.create_outlined),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: const CircleBorder(),
      ),
    );
  }
}
