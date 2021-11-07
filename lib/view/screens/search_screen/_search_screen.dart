part of '../../screens/_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SEARCH'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
