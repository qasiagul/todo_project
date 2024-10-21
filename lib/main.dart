import 'package:flutter/material.dart';
import 'package:todo_project/practice/input_form.dart';
import 'package:todo_project/screen/todo_screen.dart';

  void main(){
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:FirstScreen(),
      );
    }
  }
