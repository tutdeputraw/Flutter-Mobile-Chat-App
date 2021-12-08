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
}
