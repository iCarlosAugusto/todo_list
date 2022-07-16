import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task extends StatelessWidget {

  final String taskName;

  const Task({Key? key, required this.taskName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text(taskName), 
        color: Colors.grey[400],
      ),
    );
  }
}
