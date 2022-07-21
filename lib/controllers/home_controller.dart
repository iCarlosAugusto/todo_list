import 'package:todo_list/models/task.dart';

import '../database/db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class HomeController {
  late Database db;

  List<Task> tasks = [];

  loadTasks() async {
    db = await DB.instance.database;
    List result = await db.query("tasks");
    result.forEach((task) {
      tasks.add(Task(id: task['id'], name: task['name']));
    });
    print(tasks);
  }
}
