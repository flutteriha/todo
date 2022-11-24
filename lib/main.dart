import 'package:flutter/material.dart';
import '../Models/todo_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../Screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ToDoAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutteriha ToDo App',
      home: HomeScreen(),
    );
  }
}
