import 'package:mobx/mobx.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_list/database/db.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/repositories/task_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  TaskRepository taskRepository = TaskRepository();
  late Database db; 

  @observable
  final ObservableList<Task> _listTasks = ObservableList();
  
  List<Task> get listTasks => _listTasks;

  @action 
  void getTasks() async {
    var result = await taskRepository.loadAllTasks();
    
    result.forEach((element) {
      listTasks.add(Task(id: element['id'], name: element['name']));
    });
  }
}