// ของแซ้ง ;-;
import 'package:flutter/material.dart';

void main() {
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
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _CountGameState testState() => _CountGameState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _CountGameState extends State<Test> {
  List<int> listBlue = [1, 2, 3];
  List<int> listRed = [3, 2, 1];
  var count = 0;
  bool teamAlternativeBlue = true;
  bool teamAlternativeRed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listRed.map((item) {
                    return _buildButtonRed(item);
                  }).toList(),
                ),
                Row(children: [
                  Expanded(
                    child: count < 20
                        ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (var i = 0; i < count; i++) _buildStar(),
                        for (var i = 0; i < 20 - count; i++)
                          _buildStarBorder()
                      ],
                    )
                        : Column(),
                  ),
                  Expanded(
                    flex: 2,
                    child: count < 20
                        ? Column(
                      children: [
                        teamAlternativeRed
                            ? Icon(
                          Icons.keyboard_arrow_up,
                          size: 100.0,
                        )
                            : Icon(
                          Icons.keyboard_arrow_up,
                          size: 100.0,
                          color: Colors.black12,
                        ),
                        Text(
                          "$count",
                          style: TextStyle(fontSize: 150.0),
                        ),
                        teamAlternativeBlue
                            ? Icon(
                          Icons.keyboard_arrow_down,
                          size: 100.0,
                        )
                            : Icon(
                          Icons.keyboard_arrow_down,
                          size: 100.0,
                          color: Colors.black12,
                        ),
                      ],
                    )
                        : Column(
                      children: [
                        !teamAlternativeBlue
                            ? Center(
                          child: Text(
                            "RED",
                            style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                            : Center(
                          child: Text(
                            "BLUE",
                            style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Text("win !",
                              style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 60.0),
                              child: _buildNewGame(),
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listBlue.map((item) {
                    return _buildButtonBlue(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonRed(int i) {
    return SizedBox(
      width: 130,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: teamAlternativeRed && count < 20
            ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          onPressed: () => _handleClickTopButton(i),
          child: Text(
            '$i',
            style: TextStyle(fontSize: 40.0),
          ),
        )
            : ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          onPressed: (null),
          child: Text(
            '$i',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonBlue(int i) {
    return SizedBox(
      width: 130,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: teamAlternativeBlue && count < 20
              ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () => _handleClickBottomButton(i),
            child: Text(
              '$i',
              style: TextStyle(fontSize: 40.0),
            ),
          )
              : ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: (null),
            child: Text(
              '$i',
              style: TextStyle(fontSize: 40.0),
            ),
          )),
    );
  }

  Widget _buildNewGame() {
    return OutlinedButton(
      onPressed: (_handleClickNewGame),
      child: Text(
        'NEW GAME',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget _buildStarBorder() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Icon(
        Icons.star_border,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildStar() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Icon(
        Icons.star,
        color: Colors.blue,
      ),
    );
  }

  _handleClickNewGame() {
    setState(() {
      count = 0;
      teamAlternativeBlue = true;
      teamAlternativeRed = false;
    });
  }

  _handleClickTopButton(int i) {
    teamAlternativeRed = !teamAlternativeRed;
    teamAlternativeBlue = !teamAlternativeBlue;
    setState(() {
      count = count + i;
    });
  }

  _handleClickBottomButton(int i) {
    teamAlternativeBlue = !teamAlternativeBlue;
    teamAlternativeRed = !teamAlternativeRed;
    setState(() {
      count = count + i;
    });
  }
}
