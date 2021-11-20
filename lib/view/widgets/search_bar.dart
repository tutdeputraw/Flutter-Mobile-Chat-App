import 'package:flutter/material.dart';
import 'package:flutter_chat_app/core/models/_model.dart';
import 'package:flutter_chat_app/core/services/_service.dart';

class SearchBarWidget extends SearchDelegate<String?> {
  final _padding = 5.0;
  late Function(UserModel) addFriendOnClick;
  late Function backOnClick;

  SearchBarWidget({
    required this.addFriendOnClick,
    required this.backOnClick,
  });

  @override
  List<Widget>? buildActions(BuildContext context) {
    try {
      return [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
              showSuggestions(context);
            }
          },
        )
      ];
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Widget? buildLeading(BuildContext context) {
    try {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          backOnClick();
          close(context, null);
        },
      );
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    try {
      return FutureBuilder<List<UserModel>>(
        future: UserServices().search(query),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              padding: EdgeInsets.symmetric(
                vertical: _padding,
              ),
              child: ListView.separated(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return _card(snapshot.data![index]);
                },
                separatorBuilder: (context, index) => Divider(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  height: _padding,
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('something went wrong'));
          }
          return const Center(child: CircularProgressIndicator());
        },
      );
    } catch (e) {
      throw UnimplementedError();
    }
  }

  Widget _card(UserModel data) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: _padding,
      ),
      child: ListTile(
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text(data.username),
        trailing: TextButton(
          onPressed: () => addFriendOnClick(data),
          child: const Text('Add'),
        ),
      ),
    );
  }
}
