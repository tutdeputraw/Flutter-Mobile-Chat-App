part of '_widget.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenProvider>(
      builder: (context, value, _) => SalomonBottomBar(
        unselectedItemColor: Colors.white60,
        selectedItemColor: Colors.white,
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        currentIndex: value.page,
        onTap: (index) => value.page = index,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.chat_bubble),
            title: const Text('Messages'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.group),
            title: const Text('Friends'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.person),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
