part of '../../../core/controller/_controller.dart';

class ChatListScreenController extends GetxController {
  List<Messages> get getMessages {
    return Get.put(ChatController()).messages;
  }

  void fabOnClick() {
    Get.to(const NewChatScreen(key: Key('NewChatScreen')));
  }

  void cardOnCLick(UserModel friend){
    Get.to(ChatScreen(friend: friend));
  }

  void searchOnClick(context) {
    showSearch(
      context: context,
      delegate: SearchPage(
        items: [],
        searchLabel: 'Search Chat',
        builder: (person) => const ListTile(
          title: Text('person.name'),
          subtitle: Text('person.surname'),
          trailing: Text('person.age yo'),
        ),
        filter: (t) => [''],
      ),
    );
  }
}
