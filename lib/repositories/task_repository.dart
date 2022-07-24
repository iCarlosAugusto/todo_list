import 'package:sqflite/sqlite_api.dart';
import 'package:todo_list/database/db.dart';

class TaskRepository {
  late Database db;

  Future<List> loadAllTasks() async {
    db = await DB.instance.database;
    var result = await db.query("tasks");
    return result;
  }

  Future createNewTask(String name) async {
    db = await DB.instance.database;
    await db.insert('tasks', {'name': name });
  }
}