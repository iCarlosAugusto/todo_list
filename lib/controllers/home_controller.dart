import '../database/db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class HomeController {
  late Database db;

  Future<List> loadTasks() async {
    db = await DB.instance.database;
    List result = await db.query("tasks");
    return result;
  }
}
