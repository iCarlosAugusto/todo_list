import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateNewTask extends StatelessWidget {
  const CreateNewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Create new task!")],
    );
  }
}
