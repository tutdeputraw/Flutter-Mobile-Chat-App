part of '_helpers.dart';

class WebSocketHelper {
  void establishConnection() {
    print('establishConnection');

    IOWebSocketChannel channel;
    bool connected = false;

    try {
      channel = IOWebSocketChannel.connect("ws://192.168.0.5:6060/222");
      channel.stream.listen(
        (message) {
          print(message);
        },
        onDone: () {
          print("Web socket is closed");
        },
        onError: (error) {
          print(error.toString());
        },
      );
    } catch (_) {
      print("error on connecting to websocket.");
    }
  }
}
