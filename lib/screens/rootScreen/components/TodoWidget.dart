import 'package:flutter/material.dart';
import 'package:microsoft_todo/screens/rootScreen/components/TodoListWidget.dart';

class TodoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: <Widget>[
          TodoListWidget(Icons.lightbulb_outline, 'My Day', '2'),
          TodoListWidget(Icons.star_border, 'Important', '1'),
          TodoListWidget(Icons.calendar_today, 'Planned', ''),
          TodoListWidget(Icons.person_pin, 'Assigned to Me', ''),
          TodoListWidget(Icons.home, 'Task', '17'),
          Divider(),
          TodoListWidget(Icons.format_list_bulleted, 'Ideas', '23')
        ]
    );
  }
}