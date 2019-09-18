import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Ideas'),
            leading:
                IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                  Navigator.pop(context);
                })),
        body: Center(
            child: SingleChildScrollView(
                child: 
          Column(children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.check_box_outline_blank,
                            size: 35, color: Colors.white),
                        onPressed: () {}),
                    Text('Task you set out to do',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    IconButton(
                        icon: Icon(Icons.star_border,
                            size: 35, color: Colors.white),
                        onPressed: () {}),
                  ],
                )),
            Card(
                child: Divider(color: Colors.transparent, height: 0.1),
                elevation: 3),
            FlatButton(
                child: Row(children: <Widget>[
                  Container(
                      child: Icon(Icons.add, color: Colors.white),
                      margin: EdgeInsets.only(right: 20)),
                  Text('Add step', style: TextStyle(color: Colors.white))
                ]),
                onPressed: () {}),
            Divider(color: Colors.grey[800]),
            Card(
                color: Colors.grey[900],
                child: FlatButton(
                    child: Row(children: <Widget>[
                      Container(
                          child: Icon(Icons.brightness_7, color: Colors.white),
                          margin: EdgeInsets.only(right: 20)),
                      Text('Add to my day',
                          style: TextStyle(color: Colors.white, fontSize: 17))
                    ]),
                    onPressed: () {})),
            Card(
                color: Colors.grey[900],
                child: Column(children: <Widget>[
                  FlatButton(
                      child: Row(children: <Widget>[
                        Container(
                            child: Icon(Icons.alarm, color: Colors.white),
                            margin: EdgeInsets.only(right: 20)),
                        Text('Remind me',
                            style: TextStyle(color: Colors.white, fontSize: 17))
                      ]),
                      onPressed: () {}),
                  Divider(color: Colors.black, indent: 55),
                  FlatButton(
                      child: Row(children: <Widget>[
                        Container(
                            child:
                                Icon(Icons.calendar_today, color: Colors.white),
                            margin: EdgeInsets.only(right: 20)),
                        Text('Add due date',
                            style: TextStyle(color: Colors.white, fontSize: 17))
                      ]),
                      onPressed: () {}),
                  Divider(color: Colors.black, indent: 55),
                  FlatButton(
                      child: Row(children: <Widget>[
                        Container(
                            child: Icon(Icons.autorenew, color: Colors.white),
                            margin: EdgeInsets.only(right: 20)),
                        Text('Repeat',
                            style: TextStyle(color: Colors.white, fontSize: 17))
                      ]),
                      onPressed: () {}),
                ])),
            Card(
                color: Colors.grey[900],
                child: FlatButton(
                    child: Row(children: <Widget>[
                      Container(
                          child: Icon(Icons.file_upload, color: Colors.white),
                          margin: EdgeInsets.only(right: 20)),
                      Text('Add file',
                          style: TextStyle(color: Colors.white, fontSize: 17))
                    ]),
                    onPressed: () {})),
            Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[900]),
                    child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Add note',
                            hintStyle: TextStyle(color: Colors.white)),
                        autocorrect: true,
                        cursorColor: Colors.white,
                        expands: true,
                        maxLines: null,
                        minLines: null),
                    height: 110)),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text('Created on Tue, Aug, 20',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      Container(
                        height: 25,
                        width: 25,
                        child: IconButton(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(0),
                          icon: Icon(Icons.delete, color: Colors.white),
                          onPressed: () {}))
                    ],
                  ))
          ]),
         )));
  }
}
