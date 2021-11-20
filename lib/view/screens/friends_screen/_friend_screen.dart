part of '../../screens/_screen.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.read<FriendScreenProvider>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Friends'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: provider.searchNewFriendsOnClick,
            icon: const Icon(CupertinoIcons.person_add_solid),
          ),
        ],
      ),
      body: Consumer<FriendScreenProvider>(
        builder: (context, value, _) => value.friendProvider.friend.isNotEmpty
            ? ListView.builder(
                itemCount: value.friendProvider.friend.length,
                itemBuilder: (context, index) => _card(
                  value.friendProvider.friend[index],
                ),
              )
            : const Center(child: Text('You have no friend yet :(')),
      ),
    );
  }

  Widget _card(Friend data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        tileColor: Colors.white,
        title: Text(data.name),
      ),
    );
  }
}
