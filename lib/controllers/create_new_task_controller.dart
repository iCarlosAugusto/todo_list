import 'package:sqflite/sqflite.dart';
import 'package:todo_list/database/db.dart';
import 'package:sqflite/sqlite_api.dart';

class CreateNewTaskController {
  late Database db;

  createTask(String name) async {
    db = await DB.instance.database;
    await db.insert('tasks', {'name': name});
  }

  Future<List> loadTasks() async {
    db = await DB.instance.database;
    var result = await db.query("tasks");
    return result;
  }
}
