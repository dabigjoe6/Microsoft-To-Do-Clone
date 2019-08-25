import 'package:flutter/material.dart';
import 'package:microsoft_todo/screens/rootScreen/RootScreen.dart';
import 'package:microsoft_todo/screens/searchScreen/SearchScreen.dart';
import 'package:microsoft_todo/screens/todoListScreen/TodoListScreen.dart';

void main() => runApp( RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'To-Do',
      initialRoute: '/',
      routes: {
        '/': (context) => RootScreen(),
        '/searchRoute': (context) => SearchScreen(),
        '/todoListRoute': (context) => TodoListScreen()
      },   
    );
  }
}

class TodoListRouteArguments {
  final String title;
  final bool isNormalList;

  TodoListRouteArguments(this.title, this.isNormalList);
}












