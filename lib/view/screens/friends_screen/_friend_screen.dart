part of '../../screens/_screen.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FriendScreenController());

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Friends'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => controller.searchNewFriendsOnClick(context),
            icon: const Icon(CupertinoIcons.person_add_solid),
          ),
        ],
      ),
      body: GetBuilder(
        init: FriendScreenController(),
        builder: (_) => controller.friendController.friend.isNotEmpty
            ? ListView.builder(
                itemCount: controller.friendController.friend.length,
                itemBuilder: (context, index) => _card(
                  controller.friendController.friend[index],
                ),
              )
            : const Center(child: Text('You have no friend :(')),
      ),
    );
  }

  Widget _card(UserModel data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        tileColor: Colors.white,
        title: Text(data.username),
      ),
    );
  }
}
