part of '../../screens/_screen.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomepageProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to HomePage'),
          automaticallyImplyLeading: false,
          actions: [
            Consumer<HomepageProvider>(
              builder: (context, value, _) => TextButton(
                onPressed: () => value.signOutOnClick(context),
                child: const Text(
                  'SIGN OUT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Text('tes123'),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
