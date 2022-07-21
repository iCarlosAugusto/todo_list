import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_list/components/task.dart';
import 'package:todo_list/controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home View!")),
      body: Column(children: [
        ElevatedButton(onPressed: () {
          homeController.loadTasks();
        }, child: Text("TESTAR DB"))
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/createTask");
          },
          child: Icon(Icons.plus_one)),
    );
  }
}
