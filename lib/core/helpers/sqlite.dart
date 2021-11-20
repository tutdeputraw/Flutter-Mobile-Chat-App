part of '_helpers.dart';

class SqliteHelper {
  static Future<void> createTables({
    required Database database,
    required String syntax,
  }) async {
    await database.execute(syntax);
  }

  static Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'chap.db'),
      version: 1,
      onCreate: (database, version) async {
        await createTables(
          database: database,
          syntax: 'CREATE TABLE friend(userId INTEGER, friendId INTEGER)',
        );
      },
    );
  }
}
