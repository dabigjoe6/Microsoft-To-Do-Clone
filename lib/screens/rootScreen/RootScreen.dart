import 'package:flutter/material.dart';
import 'package:microsoft_todo/screens/rootScreen/components/ProfileWidget.dart';
import 'package:microsoft_todo/screens/rootScreen/components/TodoWidget.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color.fromRGBO(36, 36, 38, 0.0),
        body: SafeArea(
          child: Column(
              children: <Widget>[
              //User profile
              ProfileWidget(),
              Divider(),
              Expanded (
                child: TodoWidget()
              )],
              mainAxisAlignment: MainAxisAlignment.start
          )
        )
    );
  }
}