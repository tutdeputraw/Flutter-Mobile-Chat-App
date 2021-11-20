part of '_provider.dart';

class WebSocketProvider extends ChangeNotifier {
  late BuildContext _context;
  late IOWebSocketChannel _channel;
  bool _connected = false;

  WebSocketProvider(context) {
    this.context = context;
    webSocket();
  }

  void webSocket() {
    try {
      channel = IOWebSocketChannel.connect(_getURL);
      channel.stream.listen(
        (message) => _onMessage(message),
        onDone: () => _onDone(),
        onError: (error) => _onError(error),
      );
    } catch (_) {
      print("error on connecting to websocket.");
    }
  }

  void _onMessage(message) {
    if (message == 'connected') {
      connected = true;
    } else if (message == "send:success") {
      print("Message send success");
    } else if (message == "send:error") {
      print("Message send error");
    }
  }

  void _onDone() {
    print("Web socket is closed");
    connected = false;
  }

  void _onError(error) {
    print(error.toString());
  }

  String get _getURL => 'ws://192.168.0.6:6060/${getUserId(context)}';

  int? getUserId(context) {
    final userState = Provider.of<UserStateProvider>(context, listen: false);
    return userState.getUser!.id;
  }

  bool get connected => _connected;

  set connected(bool value) {
    _connected = value;
    notifyListeners();
  }

  IOWebSocketChannel get channel => _channel;

  set channel(IOWebSocketChannel value) {
    _channel = value;
    notifyListeners();
  }

  BuildContext get context => _context;

  set context(BuildContext value) {
    _context = value;
    notifyListeners();
  }
}
