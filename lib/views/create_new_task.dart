import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../stores/task_store.dart';

class CreateNewTask extends StatefulWidget {
  const CreateNewTask({Key? key}) : super(key: key);

  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  late TaskStore taskStore;
  final _formKey = GlobalKey<FormState>();
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    taskStore = Provider.of<TaskStore>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Create a new task")),
      body: Column(children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Type something";
                    }
                  },
                  controller: textFieldController
                ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    taskStore.addNewTask(textFieldController.text);
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Sucesso!"), backgroundColor: Colors.green,)
                    );
                  }
                },
                child: const Text("Create!"))
            ],
          ),
        )
      ]),
    );
  }
}
