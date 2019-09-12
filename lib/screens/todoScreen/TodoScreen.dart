import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Ideas'),
            leading:
                IconButton(icon: Icon(Icons.arrow_back), onPressed: () {})),
        body: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            IconButton(
                icon: Icon(Icons.check_box_outline_blank, size: 35, color: Colors.white), onPressed: () {}),
            Text('Task you set out to do', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white)),
            IconButton(icon: Icon(Icons.star_border, size: 35, color: Colors.white), onPressed: () {}),
          ],)),
          Card(child: Divider(color: Colors.transparent, height: 0.1), elevation: 3),
          FlatButton(
              child: Row(children: <Widget>[
                Container(child: Icon(Icons.add, color: Colors.white), margin: EdgeInsets.only(right: 20)), Text('Add step', style: TextStyle(color: Colors.white))]),
              onPressed: () {}),
          Divider(color: Colors.grey[800]),
          Card(
              color: Colors.grey[900],
              child: FlatButton(
                  child: Row(
                      children: <Widget>[
                        Container(child: Icon(Icons.brightness_7, color: Colors.white), margin: EdgeInsets.only(right: 20)), Text('Add to my day', style: TextStyle(color: Colors.white, fontSize: 17))]),
                  onPressed: () {})),
          Card(
            color: Colors.grey[900],
              child: Column(children: <Widget>[
            FlatButton(
                child:
                    Row(children: <Widget>[
                      Container(child: Icon(Icons.alarm, color: Colors.white), margin: EdgeInsets.only(right: 20)), Text('Remind me', style: TextStyle(color: Colors.white, fontSize: 17))]),
                onPressed: () {}),
            Divider(color: Colors.black, indent: 55),
            FlatButton(
                child:
                    Row(children: <Widget>[Container(child: Icon(Icons.calendar_today, color: Colors.white), margin: EdgeInsets.only(right: 20)), Text('Add due date', style: TextStyle(color: Colors.white, fontSize: 17))]),
                onPressed: () {}),
            Divider(color: Colors.black, indent: 55),
            FlatButton(
                child:
                    Row(children: <Widget>[Container(child: Icon(Icons.autorenew, color: Colors.white), margin: EdgeInsets.only(right: 20)), Text('Repeat', style: TextStyle(color: Colors.white, fontSize: 17))]),
                onPressed: () {}),
          ])),
          Card(
            color: Colors.grey[900],
              child: FlatButton(
                  child: Row(
                      children: <Widget>[Container(child: Icon(Icons.file_upload, color: Colors.white), margin: EdgeInsets.only(right: 20)), Text('Add file', style: TextStyle(color: Colors.white, fontSize: 17))]),
                  onPressed: () {})),
          Container(child: TextField(autocorrect: true, expands: true, maxLines: null, minLines: null), height: 40),
           Expanded(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Created on Tue, Aug, 20'),
                    IconButton(icon: Icon(Icons.delete), onPressed: () {})
                  ],
                )))
        ]));
  }
}
