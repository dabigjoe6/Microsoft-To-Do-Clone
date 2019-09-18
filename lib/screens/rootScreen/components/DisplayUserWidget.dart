import 'package:flutter/material.dart';

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
              color: Colors.white,
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