import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_list/controllers/create_new_task_controller.dart';

class CreateNewTask extends StatefulWidget {
  const CreateNewTask({Key? key}) : super(key: key);

  @override
  State<CreateNewTask> createState() => _CreateNewTaskState();
}

class _CreateNewTaskState extends State<CreateNewTask> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController textFieldController = TextEditingController();
  final CreateNewTaskController createNewTaskController =
      CreateNewTaskController();

  @override
  Widget build(BuildContext context) {
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
                  controller: textFieldController),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      createNewTaskController.createTask(textFieldController.text);
                    }
                  },
                  child: const Text("Oi"))
            ],
          ),
        )
      ]),
    );
  }
}
