import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/stores/task_store.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  late TaskStore taskStore;

  @override
  Widget build(BuildContext context) {
    taskStore = context.watch<TaskStore>();

    return Scaffold(
      appBar: AppBar(title: const Text("Home View!")),
      body: 
      Observer(builder: ((context) {
        return ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            title: Text(taskStore.taskList[index].name),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        }, separatorBuilder: (_,__) => const Divider(), itemCount: taskStore.taskList.length);
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/createTask");
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}
