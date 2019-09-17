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
                flex: 8,
                child: TodoWidget()
              ),
              Expanded(
                flex: 1,
                child: Container(padding: EdgeInsets.symmetric(horizontal: 10), child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(right: 10), child: Icon(Icons.add)),
                        Text('New list', style: TextStyle(fontSize: 15))
                      ]
                    ),
                    IconButton(
                      icon: Icon(Icons.add_to_photos),
                      onPressed: (() {})
                    )
                  ]
                ))
              )],
              mainAxisAlignment: MainAxisAlignment.start
          )
        )
    );
  }
}