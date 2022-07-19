import 'package:flutter/material.dart';
import 'package:todo_list/routes/generate_routes.dart';
import 'package:todo_list/views/home_view.dart';

void main() {
  runApp(const MyApp());
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
