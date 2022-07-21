import 'package:mobx/mobx.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_list/database/db.dart';
import 'package:todo_list/models/task.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  late Database db; 

  @observable
  final ObservableList<Task> _listTasks = ObservableList();
  
  List<Task> get listTasks => _listTasks;

  @action 
  void loadTasks() async {
    db = await DB.instance.database;
    List result = await db.query("tasks");

    result.forEach((element) {
      _listTasks.add(Task(id: element['id'], name: element['name']));
    });

    print(_listTasks);
  }
}