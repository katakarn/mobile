// date 22/08/64

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLYMPIC BOXING SCORING',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: WidgetUI(),
    );
  }
}

class WidgetUI extends StatefulWidget {
  const WidgetUI({Key? key}) : super(key: key);

  @override
  _WidgetUIState createState() => _WidgetUIState();
}

class _WidgetUIState extends State<WidgetUI> {
  List<int> list = [1, 2, 3];
  bool showNumber = true;

  _handleClickButton() {
    setState(() {
      list.add(list.length + 1);
    });
  }

  _handleClickButton2() {
    setState(() {
      showNumber = !showNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: showNumber
                  ? Column(
                      // Conditional Operator => showNumber(bool) ? do something(true) : do something(false)
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: list
                          .map(
                            (item) => Text(
                              item.toString(),
                              style: TextStyle(fontSize: 30.0),
                            ),
                          )
                          .toList(),
                    )
                  : Column(
                      // Conditional Operator => showNumber(bool) ? do something(true) : do something(false)
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: list
                          .map(
                            (item) => Text(
                              item.toString(),
                              style: TextStyle(fontSize: 30.0),
                            ),
                          )
                          .toList(),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _handleClickButton, child: Text('TEST')),
                SizedBox(
                  width: 60.0,
                ),
                TextButton(
                    onPressed: _handleClickButton2, child: Text('TEST2')),
              ],
            ),
            Image(
              image: AssetImage(
                showNumber ? 'assets/images/op.png' : 'assets/images/p.png',
              ),
              width: 100.0,
              height: 100.0,
              fit: BoxFit.contain,
            ),
          ],
        ),
        /*[
               for(var item in list)
                 Text(item.toString(), style: TextStyle(fontSize: 30.0)),

               TextButton(onPressed: _handleClickButton, child: Text('TEST')),
               */ /*TextButton(onPressed: () {
                 setState(() {
                   i = i + 1;
                 });
               }, child: Text('TEST')),*/ /*
             ],*/
      ),
    );
  }
}