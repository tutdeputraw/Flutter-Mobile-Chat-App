part of '_widget.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
      builder: (context, value, _) => CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        color: Colors.blue,
        key: value.bottomNavigationKey,
        items: const <Widget>[
          Icon(
            Icons.home_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle_rounded,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) => value.page = index,
      ),
    );
  }
}
