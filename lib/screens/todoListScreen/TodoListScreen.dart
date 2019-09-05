import 'package:flutter/material.dart';
import 'package:microsoft_todo/screens/todoListScreen/components/TitleBarWidget.dart';
import 'package:microsoft_todo/screens/todoListScreen/components/TodoItemsListWidget.dart';
import 'package:microsoft_todo/main.dart';

class TodoListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final TodoListRouteArguments args = ModalRoute.of(context).settings.arguments;
    
    String title = args.title;
    bool isNormalList = args.isNormalList;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        body: CustomScrollView(
        slivers: <Widget>[
          TitleBarWidget(isNormalList: isNormalList, title: title),
          TodoItemsListWidget(title: title,)
        ]
      ))
    );

    // return SafeArea(
    //   child: Scaffold(
    //     body: Column(
    //       children: <Widget>[
    //         TitleBarWidget(
    //           title: title,
    //           isNormalList: isNormalList
    //         ),
    //         Expanded(
    //           child: TodoItemsListWidget(
    //             title: title
    //           )
    //         )
    //       ]
    //     )
    //   )
    // );
  }
}