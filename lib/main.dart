import 'package:flutter/material.dart';
import 'package:microsoft_todo/screens/rootScreen/RootScreen.dart';
import 'package:microsoft_todo/screens/searchScreen/SearchScreen.dart';

void main() => runApp( RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'To-Do',
      initialRoute: '/',
      routes: {
        '/': (context) => RootScreen(),
        '/searchRoute': (context) => SearchScreen()
      },   
    );
  }
}












