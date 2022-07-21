import 'package:sqflite/sqflite.dart';
import 'package:todo_list/database/db.dart';
import 'package:sqflite/sqlite_api.dart';

class CreateNewTaskController {
  late Database db;

  createTask(String name) async {
    db = await DB.instance.database;
    await db.insert('tasks', {'name': name});
  }
}
