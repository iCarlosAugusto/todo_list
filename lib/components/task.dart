import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String taskName;

  const Task({Key? key, required this.taskName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [Text("Limpar a casa"), Text("13:00")],
          ),
          Checkbox(
              value: true,
              onChanged: (isChecked) {
                print(isChecked);
              })
        ],
      ),
    );
  }
}
