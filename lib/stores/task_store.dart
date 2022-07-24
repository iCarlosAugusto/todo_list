import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/repositories/task_repository.dart';
import 'package:sqflite/sqflite.dart';
part 'task_store.g.dart';

class TaskStore = _TaskStoreBase with _$TaskStore;

abstract class _TaskStoreBase with Store {
  TaskRepository taskRepository = TaskRepository();
  late Database db;

  _TaskStoreBase() {
    _initStore();
  }

  _initStore(){
    getAllTasks();
  }

  @observable 
  ObservableList<Task> _taskList = ObservableList();

  ObservableList<Task> get taskList => _taskList;

  @action getAllTasks() async {
     _taskList.clear();
     var result = await taskRepository.loadAllTasks();

    result.forEach((element) {
      _taskList.add(Task(id: element['id'], name: element['name']));
    });
  }

  @action addNewTask(String name) async {
    await taskRepository.createNewTask(name);
    _initStore();
  }
}