import 'package:todo_list/stores/task_store.dart';

class HomeController {

  TaskStore taskStore = TaskStore();

  getTasks(){
    taskStore.getAllTasks();
  }
}