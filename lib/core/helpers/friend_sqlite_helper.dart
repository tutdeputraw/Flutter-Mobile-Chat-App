part of '_helpers.dart';

class FriendSqliteHelper extends SqliteHelper {
  static Future<void> addFriend({
    required int userId,
    required int friendId,
  }) async {
    final db = await SqliteHelper.database();
    await db.insert(
      'friend',
      {'userId': userId, 'friendId': friendId},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Friend>> getAllFriend(context) async {
    final user = Provider.of<UserStateProvider>(context, listen: false);
    final db = await SqliteHelper.database();

    final List<Map<String, dynamic>> maps = await db.query(
      'friend',
      where: 'userId = ' + user.getUser!.id!.toString(),
    );

    return List.generate(maps.length, (i) {
      return Friend(
        id: maps[i]['userId'],
      );
    });
  }
}
