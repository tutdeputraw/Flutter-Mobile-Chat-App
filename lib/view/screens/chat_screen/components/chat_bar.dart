part of '../../_screen.dart';

class ChatBarComponent extends StatelessWidget {
  const ChatBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.watch<ChatScreenProvider>();

    return Container(
      margin: const EdgeInsets.all(5),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: TextFormField(
        controller: value.text,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          suffixIcon: IconButton(
            splashRadius: 20,
            onPressed: value.sendOnClick,
            icon: const Icon(
              Icons.send_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
