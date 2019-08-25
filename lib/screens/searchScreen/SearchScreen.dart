import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            //Do nothing for now
            Navigator.pop(context);
          }
        ),
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search'
          )
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
              //Do nothing for now
            }
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              //Do nothing for now
            }
          )
        ]
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/rocket.jpg', scale: 3),
              Container(
                padding: EdgeInsets.all(20),
                child: Text('What would you like to find? You can search within tasks, steps and notes', textAlign: TextAlign.center, style: TextStyle(fontSize: 17))
              )
            ]
          )
        )
      )
    );
  }
}