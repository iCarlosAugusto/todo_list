import 'package:sqflite/sqflite.dart';
import 'package:todo_list/database/db.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:todo_list/repositories/task_repository.dart';

class CreateNewTaskController {
  late Database db;
  TaskRepository taskRepository = TaskRepository();

  createTask(String name) async {
    taskRepository.createNewTask(name);
  }
}
