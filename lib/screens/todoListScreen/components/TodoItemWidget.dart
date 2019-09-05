import 'package:flutter/material.dart';

class TodoItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: IconButton(
            icon: Icon(Icons.check_box_outline_blank, color: Colors.white),
            onPressed: () {
              //Do nothing for now
            }),
        title: Text('The task you set to do',
            style: TextStyle(fontSize: 16, color: Colors.white)),
        trailing: IconButton(
            icon: Icon(Icons.star_border, color: Colors.white),
            onPressed: () {
              //Do nothing for now
            }),
        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        dense: false,
        onTap: () {
          //Do nothing for now
        });
  }
}
