import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/routes/generate_routes.dart';
import 'package:todo_list/stores/task_store.dart';
import 'package:todo_list/views/task_list_view.dart';

void main() {
  runApp(MultiProvider(providers: [
      Provider<TaskStore>(create: (_) => TaskStore())
    ], child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute:  RoutesGenerate.generateRoute,
      
    );
  }
}
