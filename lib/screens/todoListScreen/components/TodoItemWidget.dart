import 'package:flutter/material.dart';

class TodoItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading:  IconButton(
        icon: Icon(Icons.check_box_outline_blank),
        onPressed: () {
          //Do nothing for now
        }
      ),
      title:  Text('The task you set to do', style: TextStyle( fontSize: 15)),
      trailing:  IconButton(
        icon: Icon(Icons.star_border),
        onPressed: () {
          //Do nothing for now
        }
      ),
      contentPadding: EdgeInsets.only(right: 15, left: 15),
      dense: true,
      onTap: () {
        //Do nothing for now
      }
    );
  }
}