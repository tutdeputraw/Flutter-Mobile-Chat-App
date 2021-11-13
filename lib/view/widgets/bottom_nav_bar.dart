part of '_widget.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenProvider>(
      builder: (context, value, _) => SalomonBottomBar(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        currentIndex: value.page,
        onTap: (index) => value.page = index,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.chat_bubble),
            title: const Text('Chat'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.person_add),
            title: const Text('Add Friend'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.profile_circled),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
