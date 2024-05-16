import 'package:flutter/material.dart';
import 'package:lessons_36_register/temprature/temprature.dart';
import 'package:lessons_36_register/timer/timer.dart';
import 'package:lessons_36_register/todo_list/todo_list.dart';

import 'loop_day_app/loop_day_app.dart';
void main() {
runApp(const MyHomeApp());
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoopDayApp(),
    );
  }
}



