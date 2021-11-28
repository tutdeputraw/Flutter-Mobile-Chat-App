part of '_controller.dart';

class WebSocketController extends GetxController {
  late IOWebSocketChannel _channel;
  bool _connected = false;

  @override
  void onInit() {
    super.onInit();
    channelConnect();
  }

  void channelConnect() {
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

  Future<bool> sendMessage(
      {required String text,
      required String senderId,
      required String receiverId}) async {
    if (connected == true) {
      String message =
          "{'cmd':'send', 'senderId': '$senderId', 'receiverId': '$receiverId', 'text':'$text'}";
      channel.sink.add(message);
      return true;
    } else {
      channelConnect();
      print('websocket is not connected');
      return false;
    }
  }

  void _onMessage(String message) {
    if (message == 'connected') {
      connected = true;
      print('connected: ' + connected.toString());
    } else if (message == "send:success") {
      print("Message send success");
    } else if (message == "send:error") {
      print("Message send error");
    } else if (message.contains('"cmd":"send"')) {
      print("Message data");
      var jsondata = jsonDecode(message);
      final chat = Get.put(ChatController());
      chat.addMessage(Messages(
        senderId: Get.put(UserStateController()).getUser!.id!.toString(),
        receiverId: jsondata['senderId'],
        messageData: [
          MessageData(
            userId: jsondata['senderId'],
            text: jsondata['text'],
          )
        ],
      ));
    }
  }

  int? get getUserId {
    final userState = Get.put(UserStateController());
    return userState.getUser!.id;
  }

  void _onDone() {
    print("Web socket is closed");
    connected = false;
  }

  void _onError(error) {
    print(error.toString());
  }

  String get _getURL => 'ws://192.168.0.6:6060/$getUserId';

  IOWebSocketChannel get channel => _channel;

  set channel(IOWebSocketChannel value) {
    _channel = value;
    update();
  }

  bool get connected => _connected;

  set connected(bool value) {
    _connected = value;
    update();
  }
}
