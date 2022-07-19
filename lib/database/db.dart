import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  DB._();

  static final instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) {
      return _database;
    }

    _database = _initDB();
    return _database;
  }

  _initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'cripto.db'),
      version: 1,
      onCreate: _createDB,
    );
  }

  _createDB(db, version) async {
    await db.execute(_tasks);
  }

  String get _tasks => '''
    CREATE TABLE tasks (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
    );
  ''';
}
