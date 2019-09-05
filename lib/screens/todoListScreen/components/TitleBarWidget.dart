import 'package:flutter/material.dart';

class TitleBarWidget extends StatelessWidget {
  final String title;
  final bool isNormalList;

  TitleBarWidget({this.title, this.isNormalList});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      flexibleSpace:  FlexibleSpaceBar(
        background: Image.asset('assets/mountain.jpg', fit: BoxFit.cover),
        centerTitle: false,
        collapseMode: CollapseMode.pin,
        title: Text(this.title)
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.person_add),
          onPressed: () {}
        ),
        FlatButton(
          child: Text('SHARE'),
          onPressed: () {}
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {}
        )
      ],
      backgroundColor: Color.fromRGBO(0, 0, 0, 1 ),
      floating: false,
      pinned: true
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Stack(
  //     children: <Widget>[
  //       Image.asset('assets/mountain.jpg'),
  //       Container(
  //         constraints: BoxConstraints.expand(height: 190),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisSize: MainAxisSize.max,
  //           children: <Widget>[
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: <Widget>[
  //                 IconButton(
  //                   icon: Icon(Icons.arrow_back),
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   }
  //                 ),
  //                 Row(
  //                   children: <Widget>[
  //                     FlatButton.icon(
  //                       label: Text('SHARE'),
  //                       icon: Icon(Icons.person_add),
  //                       onPressed: () {
  //                         //Do nothing for now
  //                       }
  //                     ),
  //                     IconButton(
  //                       icon: Icon(Icons.more_vert),
  //                       onPressed: () {
  //                         //Do nothing for now
  //                       }
  //                     )
  //                   ]
  //                 ),
  //               ]
  //             ),
  //             Container(
  //               padding: EdgeInsets.only(left: 30),
  //               child: Text(this.title, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white))
  //             )
  //           ]
  //         )
  //       )
  //     ]
  //   );
  // }
}