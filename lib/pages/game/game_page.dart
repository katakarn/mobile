// import 'package:flutter/material.dart';
//
// class GamePage extends StatelessWidget {
//   const GamePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GUESS THE NUMBER'),
//       ),
//       body: Container(
//         color: Colors.amberAccent,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 20.0,
//                   height: 20.0,
//                   color: Colors.pink,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 60.0,
//                     horizontal: 20.0,
//                   ),
//                   child: Container(
//                     width: 20.0,
//                     height: 20.0,
//                     color: Colors.deepOrange,
//                   ),
//                 ),
//                 Container(
//                   width: 20.0,
//                   height: 20.0,
//                   color: Colors.green,
//                 ),
//               ],
//             ),
//             Text(
//               'Hello',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 50.0,
//               ),
//             ),
//             Text('World', textAlign: TextAlign.center),
//             Text('Flutter', textAlign: TextAlign.center),
//             Text('123', textAlign: TextAlign.center),
//           ],
//         ),
//
//         /*child: Align(
//           alignment: Alignment.topLeft,
//           child: Text('Hello Flutter'),
//           ),*/
//       ),
//       /*body: Center(
//         child: Text('${Random().nextInt(100)}',
//             style: TextStyle(fontSize: 50.0, color: Colors.deepOrange),
//             textDirection: TextDirection.ltr),
//       ),*/
//     );
//   }
// }

/*
import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> iconList = [];
    for (var i = 0; i < 4; ++i) {
      iconList.add(Icon(
        Icons.star,
        size: 25.0,
        color: Colors.orange,
      ));
    }
    iconList.add(Icon(
      Icons.star_border_sharp,
      size: 25.0,
      color: Colors.orange,
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.white60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 120.0,
                  color: Colors.blue,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'อานุภาพ ทับทิมแสน',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    Row(children: iconList),
                  ],
                ),
              ],
            ),
            Text(
              '${Random().nextInt(100)}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 150.0,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('RANDOM'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/logo_number.png',
                      width: 240.0, // 160 = 1 inch
                    ),
                    Text(
                      'GUESS THE NUMBER',
                      style: GoogleFonts.montserrat(fontSize: 22.0),
                    ),
                  ],
                ),
                Text('TEST'),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.teal, width: 20.0),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('GUESS'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
