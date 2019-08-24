import 'package:flutter/material.dart';

void main() => runApp( RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'To-Do',
      home:  Scaffold(
        // backgroundColor: const Color.fromRGBO(36, 36, 38, 0.0),
        body: SafeArea(
          child: Column(
              children: <Widget>[
              //User profile
              ProfileWidget(),
              Divider(),
              Expanded (
                child: TodoWidget()
              )
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
          )
        )
      ),
    );// theme: ThemeData.dark()
  }
}

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

class DisplayUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        //user avatar
         CircleAvatar(
          backgroundImage: AssetImage('assets/display_picture.jpg'),
          radius: 32
        ),
        //user full name
        Container(
          margin: EdgeInsets.only(bottom: 5, top: 12),
          child: Text(
            'Joseph Olabisi', 
            style: TextStyle(
              // color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
            )
          )
        ),
        //user email
         Text(
          'josepholabisi6000@gmail.com',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12
          )
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}

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
              //Do nothing for now
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

class TodoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: <Widget>[
          TodoListWidget(Icons.lightbulb_outline, 'My Day', '2'),
          TodoListWidget(Icons.star_border, 'Important', '1'),
          TodoListWidget(Icons.calendar_today, 'Planned', ''),
          TodoListWidget(Icons.person_pin, 'Assigned to Me', ''),
          TodoListWidget(Icons.home, 'Task', '17'),
          Divider(),
          TodoListWidget(Icons.format_list_bulleted, 'Ideas', '23')
        ]
    );
  }
}

class TodoListWidget extends StatelessWidget {

  IconData icon;
  String title;
  String trailing;

  TodoListWidget(IconData icon, String title, String trailing) {
    this.icon = icon;
    this.title = title;
    this.trailing = trailing;
  }

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading:  Icon(this.icon),
      title:  Text(this.title, style: TextStyle( fontSize: 15)),
      trailing:  Text(this.trailing),
      contentPadding: EdgeInsets.only(right: 15, left: 15),
      dense: true
    );
  }
}
