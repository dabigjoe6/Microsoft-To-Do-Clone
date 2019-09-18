import 'package:flutter/material.dart';
import 'package:microsoft_todo/main.dart';

class TodoListWidget extends StatelessWidget {

  final IconData icon;
  final String title;
  final String trailing;

  TodoListWidget(this.icon, this.title, this.trailing);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading:  Icon(this.icon, color: Colors.white),
      title:  Text(this.title, style: TextStyle( fontSize: 15, color: Colors.white)),
      trailing:  Text(this.trailing, style: TextStyle(color: Colors.white)),
      contentPadding: EdgeInsets.only(right: 15, left: 15),
      dense: true,
      onTap: () {
        Navigator.pushNamed(
          context,
          'todoListRoute',
          arguments: TodoListRouteArguments('Ideas', true)
        );
      }
    );
  }
}
