import 'package:flutter/material.dart';
import 'package:todo_list/views/create_new_task.dart';
import 'package:todo_list/views/home_view.dart';
import 'package:todo_list/views/task_list_view.dart';

class RoutesGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const HomeView());

      case "/createTask":
        return MaterialPageRoute(builder: (_) => const CreateNewTask());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}')
            ),
          )
        );
    }
  }

}
