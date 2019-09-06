import 'package:flutter/material.dart';

class TodoItemWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TodoItemWidgetState();
}

class TodoItemWidgetState extends State<TodoItemWidget>
    with TickerProviderStateMixin {
  PageController _pageController;

  AnimationController _animationController;
  Animation<double> animation;
  Animation<double> animationPosRight;
  Animation<double> animationPosBottom;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 1);
    _animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);

    animationPosRight = Tween<double>(begin: 27, end: -800).animate(_animationController);
    animationPosBottom = Tween<double>(begin: 17, end: -100).animate(_animationController);

    animation = Tween<double>(begin: 10, end: 2000).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) {
        if(status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if(status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });

      _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: PageView(controller: _pageController, children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              padding: EdgeInsets.only(right: 10),
            ),
            Positioned(
                height: animation.value,
                width: animation.value,
                right: animationPosRight.value,
                bottom: animationPosBottom.value,
                child: Container(
                    // constraints: BoxConstraints.loose(Size.fromRadius(100)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red))),
            Positioned(
                right: 20,
                bottom: 10,
                child: Icon(Icons.brightness_7))
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
                leading: IconButton(
                    icon: Icon(Icons.check_box_outline_blank,
                        color: Colors.white),
                    onPressed: () {
                      //Do nothing for now
                    }),
                title: Text('The task you set to do',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                trailing: IconButton(
                    icon: Icon(Icons.star_border, color: Colors.white),
                    onPressed: () {
                      //Do nothing for now
                    }),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                dense: false,
                onTap: () {
                  //Do nothing for now
                }),
          ),
          Stack(children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              padding: EdgeInsets.only(right: 10),
            ),
            Positioned(
                height: animation.value,
                width: animation.value,
                left: animationPosRight.value,
                bottom: animationPosBottom.value,
                child: Container(
                    // constraints: BoxConstraints.loose(Size.fromRadius(100)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red))),
            Positioned(
                left: 20,
                bottom: 10,
                child: Icon(Icons.restore_from_trash))
          ]),
        ]));
  }

  void dispose() {
    super.dispose();

    _pageController.dispose();
    _animationController.dispose();
  }
}
