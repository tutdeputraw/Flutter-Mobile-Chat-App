part of '../../_screen.dart';

class ChatBarComponent extends StatelessWidget {
  final String friendId;

  const ChatBarComponent({
    Key? key,
    required this.friendId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = Get.put(ChatScreenController());

    return Container(
      margin: const EdgeInsets.all(5),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: TextFormField(
        controller: value.text,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hintText: 'Type your text',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          suffixIcon: IconButton(
            splashRadius: 20,
            onPressed: () => value.sendOnClick(friendId),
            icon: const Icon(
              Icons.send_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
