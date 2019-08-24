import 'package:flutter/material.dart';
import 'package:microsoft_todo/screens/rootScreen/components/ActionWidget.dart';
import 'package:microsoft_todo/screens/rootScreen/components/DisplayUserWidget.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 20, right: 15, left: 15),
      child: Row(
        children: <Widget>[
           DisplayUserWidget(),
           ActionWidget()
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      )
    );
  }
}