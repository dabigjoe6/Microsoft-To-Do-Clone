import 'package:flutter/material.dart';
import 'package:microsoft_todo/screens/todoListScreen/components/TodoItemWidget.dart';

class TodoItemsListWidget extends StatelessWidget {
  //use title to get list items
  final String title;

  TodoItemsListWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return TodoItemWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      }
    );
  }
}