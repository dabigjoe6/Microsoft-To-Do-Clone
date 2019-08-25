import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
          )
        ),
        body: Container(
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: EdgeInsets.only(top:30, bottom: 30, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/display_picture.jpg'),
                        radius: 34
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text('Joseph Olabisi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          Text('josepholabisi6000@gmail.com')
                        ]
                      ),
                      IconButton(
                        icon: Icon(Icons.create),
                        onPressed: () {
                          //Do nothing yet
                        }
                      )
                    ]
                  )
                )
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.description),
                          Text('Dark theme'),
                        ]
                      ),
                      Switch(
                        value: true,
                        onChanged: (bool newValue) {
                          //Do nothing for now
                        }
                      )
                    ]
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}