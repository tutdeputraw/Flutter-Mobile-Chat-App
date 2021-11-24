part of '_widget.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initScreenController = Get.put(InitScreenController());

    return GetBuilder(
      init: InitScreenController(),
      builder: (_) => SalomonBottomBar(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        currentIndex: initScreenController.page,
        onTap: (index) => initScreenController.page = index,
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
