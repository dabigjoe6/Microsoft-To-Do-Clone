import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.only(bottom: 30),
          child: IconButton(
            padding: EdgeInsets.only(top: 0),
            icon: Icon(Icons.search, size: 43),
            tooltip: 'Search',
            onPressed: () {
              Navigator.pushNamed(context, '/searchRoute');
            }
          )
        ),
        Icon(Icons.arrow_drop_down),
        
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max
    );
  }
}