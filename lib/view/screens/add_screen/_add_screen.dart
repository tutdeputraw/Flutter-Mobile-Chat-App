part of '../../screens/_screen.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
