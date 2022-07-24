// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskStore on _TaskStoreBase, Store {
  late final _$_taskListAtom =
      Atom(name: '_TaskStoreBase._taskList', context: context);

  @override
  ObservableList<Task> get _taskList {
    _$_taskListAtom.reportRead();
    return super._taskList;
  }

  @override
  set _taskList(ObservableList<Task> value) {
    _$_taskListAtom.reportWrite(value, super._taskList, () {
      super._taskList = value;
    });
  }

  late final _$getAllTasksAsyncAction =
      AsyncAction('_TaskStoreBase.getAllTasks', context: context);

  @override
  Future getAllTasks() {
    return _$getAllTasksAsyncAction.run(() => super.getAllTasks());
  }

  late final _$addNewTaskAsyncAction =
      AsyncAction('_TaskStoreBase.addNewTask', context: context);

  @override
  Future addNewTask(String name) {
    return _$addNewTaskAsyncAction.run(() => super.addNewTask(name));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
