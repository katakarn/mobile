import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello/pages/game/game_page.dart';
import 'package:hello/pages/game/widget_page.dart';
import 'package:hello/pages/homeworks/game_page.dart';
import 'package:hello/pages/homeworks/page_number.dart';
// import 'package:hello/pages/homeworks/homework_page.dart';

void main() {
  /*var textWidget = Text(
    '${ Random().nextInt(100) }',
    style: TextStyle(
      fontSize: 50.0,
      color: Colors.orange
    ), textDirection: TextDirection.ltr,
  );
  var centerWidget = Center(child: textWidget,);
  runApp(centerWidget);*/
  /*runApp(
      Center(
          child: Text(
              '${ Random().nextInt(100) }',
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.orange
              ), textDirection: TextDirection.ltr
          ),
      ),
  );*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GamePage(),
    );
  }
}
