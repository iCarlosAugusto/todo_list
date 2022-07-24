import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_list/database/db.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:todo_list/repositories/task_repository.dart';
import 'package:todo_list/stores/task_store.dart';

class CreateNewTaskController {
  late Database db;
  TaskStore taskStore = TaskStore();
  TaskRepository taskRepository = TaskRepository();
 
  createTask(String name) async {
    taskStore.addNewTask(name);
    //taskRepository.createNewTask(name);
  }
}
