import 'package:flutter/material.dart';
import 'package:flutter_chat_app/core/helpers/_helpers.dart';
import 'package:flutter_chat_app/core/providers/_provider.dart';
import 'package:flutter_chat_app/view/screens/_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App(key: Key('App')));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UserStateProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Chat App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Consumer<UserStateProvider>(builder: (context, value, _) {
            if (value.getAppState != null) {
              print('Navigator: ' + Navigator.of(context).toString());
              switch (value.getAppState) {
                case state.authorize:
                  return const InitScreen();
                case state.unauthorize:
                  return const SignInScreen();
                default:
              }
            }
            return const Center(child: CircularProgressIndicator());
          }),
        ),
      ),
    );
  }
}
