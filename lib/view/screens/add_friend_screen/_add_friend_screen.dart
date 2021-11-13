part of '../../screens/_screen.dart';

class AddFriendScreen extends StatelessWidget {
  const AddFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD FRIEND'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
