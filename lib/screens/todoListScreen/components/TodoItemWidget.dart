import 'package:flutter/material.dart';

class TodoItemWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TodoItemWidgetState();
}

class TodoItemWidgetState extends State<TodoItemWidget>
    with TickerProviderStateMixin {
  PageController _pageController;

  double position;
  double positionBottom;
  double positionRight;

  void _onScroll() {

    if (_pageController.page <= 0.661) {
      setState(() {
        position = PageMoveInterpolate.position(_pageController.page);
        positionRight = PageMoveInterpolate.posRight(_pageController.page);
        positionBottom = PageMoveInterpolate.posBottom(_pageController.page);
      });
    }

    if (_pageController.page >= 1.4) {
      setState(() {
        position = PageMoveInterpolate.position(_pageController.page, true);
        positionRight =
            PageMoveInterpolate.posRight(_pageController.page, true);
        positionBottom =
            PageMoveInterpolate.posBottom(_pageController.page, true);
      });
    }

    if (_pageController.page > 0.661 && _pageController.page < 1.4) {
      setState(() {
        position = 0;
        positionRight = 25;
        positionBottom = 15;
      });
    }

  }

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 1)..addListener(_onScroll);

    position = 0;
    positionRight = 25;
    positionBottom = 15;
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: ((PointerDownEvent event) {

        print('HERE!');
      }),
      onPointerUp: ((PointerUpEvent event) {
        print('UP!');
      }),
      child: Container(
        height: 50,
        child: PageView(controller: _pageController, children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(68, 68, 68, 0.5),
              padding: EdgeInsets.only(right: 10),
            ),
            Positioned(
                height: position,
                width: position,
                right: positionRight,
                bottom: positionBottom, //psitionRight,
                // bottom: positionBottom,
                child: Container(
                    // constraints: BoxConstraints.loose(Size.fromRadius(100)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue))),
            Positioned(
                right: 20,
                bottom: 10,
                child: Icon(Icons.brightness_7, color: Colors.white))
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
              color: Color.fromRGBO(68, 68, 68, 0.5),
              padding: EdgeInsets.only(right: 10),
            ),
            Positioned(
                height: position,
                width: position,
                left: positionRight,
                bottom: positionBottom,
                child: Container(
                    // constraints: BoxConstraints.loose(Size.fromRadius(100)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red))),
            Positioned(
                left: 20,
                bottom: 10,
                child: Icon(Icons.restore_from_trash, color: Colors.white))
          ]),
        ])));
  }

  void dispose() {
    super.dispose();

    _pageController.dispose();
  }
}

class PageMoveInterpolate {
  static double x0;
  static double x1;
  static double position_y1 = 2000;
  static double position_y0 = 15;
  static double right_y1 = -666.5;
  static double right_y0 = 25;
  static double bottom_y1 = -600;
  static double bottom_y0 = 15;

  static position(double page, [bool inverse]) {
    if (inverse == true) {
      x0 = 1.4;
      x1 = 2;
    } else {
      x0 = 0.661;
      x1 = 0;
    }
    //x0 = 1 and x1 = 0, position_y0 = 15 and position_y1 = 2000
    return ((position_y0 * (x1 - page)) + (position_y1 * (page - x0))) /
        (x1 - x0);
  }

  static posRight(double page, [bool inverse]) {
    if (inverse == true) {
      x0 = 1.4;
      x1 = 2;
    } else {
      x0 = 0.661;
      x1 = 0;
    }
    return ((right_y0 * (x1 - page)) + (right_y1 * (page - x0))) / (x1 - x0);
  }

  static posBottom(double page, [bool inverse]) {
    if (inverse == true) {
      x0 = 1.4;
      x1 = 2;
    } else {
      x0 = 0.661;
      x1 = 0;
    }

    return ((bottom_y0 * (x1 - page)) + (bottom_y1 * (page - x0))) / (x1 - x0);
  }
}
