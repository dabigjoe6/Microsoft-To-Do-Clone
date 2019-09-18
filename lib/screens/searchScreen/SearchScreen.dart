import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            //Do nothing for now
            Navigator.pop(context);
          }
        ),
        title: TextField(
          autofocus: true,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white)
          )
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.mic, color: Colors.white),
            onPressed: () {
              //Do nothing for now
            }
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
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
                child: Text('What would you like to find? You can search within tasks, steps and notes', textAlign: TextAlign.center, style: TextStyle(fontSize: 17, color: Colors.white))
              )
            ]
          )
        )
      )
    );
  }
}