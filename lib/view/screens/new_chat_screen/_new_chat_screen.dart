part of '../../screens/_screen.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FriendController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('New chat'),
      ),
      body: GetBuilder(
        init: FriendController(),
        builder: (_) => controller.friend.isNotEmpty
            ? ListView.builder(
                itemCount: controller.friend.length,
                itemBuilder: (context, index) => FriendCardWidget(
                  data: controller.friend[index],
                  onTap: () {
                    Get.off(ChatScreen(
                      friend: controller.friend[index],
                    ));
                  },
                ),
              )
            : const Text('You have no friend:('),
      ),
    );
  }

  // Widget _card({required UserModel data}) {
  //   return InkWell(
  //     onTap: () {
  //       Get.off(ChatScreen(
  //         friend: data.id.toString(),
  //       ));
  //     },
  //     child: Container(
  //       margin: const EdgeInsets.symmetric(vertical: 6),
  //       child: ListTile(
  //         tileColor: Colors.white,
  //         title: Text(data.username),
  //       ),
  //     ),
  //   );
  // }
}
