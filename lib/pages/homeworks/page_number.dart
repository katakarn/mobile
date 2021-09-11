/*
import 'dart:math';
import 'package:flutter/material.dart';

class PageNumber extends StatelessWidget {
  const PageNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var output = rng.nextInt(100);
    var starSize = 20.0;
    const paddingSize = 1.0;
    List<Widget> icon = [];

    var top = Padding(
        padding: EdgeInsets.fromLTRB(0, 85, 0, 0),
        child:Container(
          child: Column(
            children: [
              Icon(
                Icons.lock_outline,
                size: 100,
                color: Colors.grey,
              ),
              Text(
                "กรุณาใส่รหัสผ่าน",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ));
    List<Widget> Button_list = [];
    for (int i = 1; i <= 3; i++) {
      List<Widget> temp = [];
      for (int j = 1; j <= 3; j++) {
        var num = i * j;

        temp.add(RawMaterialButton(
          onPressed: () {},
          elevation: 2.0,
          fillColor: Colors.white,
          child: Text("$num"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ));
      }
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: temp,
      );
      Button_list.add(row);
    }
    Row row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Container(
            color: Colors.white,
            width: 40,
            height: 40,
          ),
        ),
        RawMaterialButton(
          onPressed: () {},
          elevation: 2.0,
          fillColor: Colors.white,
          child: Text("0"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(25, 15, 15, 15),
            child: Icon(Icons.backspace_outlined, size: 30,))
      ],
    );
    Button_list.add(row);

    var mid = Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: Button_list,
      ),
    );

    var bottom = Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(
          onPressed: () {},
          child: Text('ลืมรหัสผ่าน'),
        ));

    var head = "";
    var page = Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[top, mid, bottom],
        ),
      ),
    );

    return page;
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNumber extends StatelessWidget {
  const PageNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildButton3(int s) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 2.0),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(s.toString(),
                style: TextStyle(fontSize: 28.0, color: Colors.grey.shade600)),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        color: Colors.white60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 70.0,
                    color: Colors.indigo.shade400,
                  ),
                  Text('กรุณาใส่รหัสผ่าน',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600)),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [1,2,3].map((i) => _buildButton3(i)).toList(),
                    /*children: [
                      _buildButton3('1'),
                      _buildButton3('2'),
                      _buildButton3('3'),
                    ],*/
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton3(4),
                      _buildButton3(5),
                      _buildButton3(6),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton3(7),
                      _buildButton3(8),
                      _buildButton3(9),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 55.0),
                      _buildButton3(0),
                      Container(width: 25.0),
                      Icon(Icons.backspace_outlined,
                          size: 30.0, color: Colors.grey.shade600),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'ลืมรหัสผ่าน',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}