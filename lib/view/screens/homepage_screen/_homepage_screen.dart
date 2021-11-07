part of '../../screens/_screen.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOMEPAGE'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
