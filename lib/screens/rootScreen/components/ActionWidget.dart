import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(bottom: 30),
          child: IconButton(
            padding: EdgeInsets.only(top: 0),
            icon: Icon(Icons.search, size: 33),
            tooltip: 'Search',
            onPressed: () {
              Navigator.pushNamed(context, '/searchRoute');
            }
          )
        ),   
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(bottom: 30),
          child: IconButton(
            padding: EdgeInsets.only(top: 0),
            icon: Icon(Icons.settings, size: 33),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.pushNamed(context, '/settingsRoute');
            }
          )
        )    
      ],
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}