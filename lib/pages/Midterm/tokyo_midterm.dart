// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'OLYMPIC BOXING SCORING',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       home: TokyoPage(),
//     );
//   }
// }
//
// class TokyoPage extends StatefulWidget {
//   const TokyoPage({Key? key}) : super(key: key);
//
//   @override
//   _TokyoPageState createState() => _TokyoPageState();
// }
//
// class _TokyoPageState extends State<TokyoPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     var scoreListRed = [];
//     var scoreListBlue = [];
//     var totalRed = 0;
//     var totalBlue = 0;
//     var count = 0;
//
//     _pressButton(bool win) {
//       setState(() {
//         if (win) {
//           totalBlue += 9;
//           totalRed += 10;
//           scoreListRed.add(10);
//           scoreListBlue.add(9);
//         } else {
//           scoreListRed.add(9);
//           scoreListBlue.add(10);
//           totalBlue += 10;
//           totalRed += 9;
//         }
//         count++;
//       });
//     }
//
//     reset() {
//       setState(() {
//         totalBlue = 0;
//         totalRed = 0;
//         count = 0;
//         scoreListBlue = [];
//         scoreListRed = [];
//       });
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('OLYMPIC BOXING SCORING'),
//         backgroundColor: Colors.redAccent,
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Image(
//                     image: AssetImage(
//                       'assets/images/logo.png',
//                     ),
//                     height: 100,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               color: Colors.black,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Women's Light (57-60kg) Semi-final",
//                     style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(
//                     Icons.person,
//                     size: 120.0,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Image(
//                                 image: AssetImage(
//                                   'assets/images/flag_ireland.png',
//                                 ),
//                                 height: 50,
//                               ),
//                             ),
//                             Text(
//                               "IRELAND",
//                               style: TextStyle(
//                                 fontSize: 20,
//                               ),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               "HARRINGTON Kellie Anne",
//                               style: TextStyle(
//                                 fontSize: 20,
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(
//                     Icons.person,
//                     size: 120.0,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Image(
//                                 image: AssetImage(
//                                   'assets/images/flag_thailand.png',
//                                 ),
//                                 height: 50,
//                               ),
//                             ),
//                             Text(
//                               "THAILAND",
//                               style: TextStyle(
//                                 fontSize: 20,
//                               ),
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               "SEESONDEE Sudaporn",
//                               style: TextStyle(
//                                 fontSize: 20,
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//
//             Row(
//               children: [
//                 Expanded(
//                     child: Container(
//                   height: 10,
//                   color: Colors.red,
//                 )),
//                 Expanded(
//                     child: Container(
//                   height: 10,
//                   color: Colors.blue,
//                 )),
//               ],
//             ),
//
//         Expanded(
//             child: Column(
//               children: [
//                 for (int i = 0; i < count; i++)
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Center(child: Text("round ${i + 1}".toUpperCase())),
//                         Row(
//                           children: [
//                             Expanded(
//                                 child: Center(
//                                     child: Text(
//                                       "${scoreListRed[i]}",
//                                       style: TextStyle(fontSize: 20),
//                                     ))),
//                             Expanded(
//                                 child: Center(
//                                     child: Text(
//                                       "${scoreListBlue[i]}",
//                                       style: TextStyle(fontSize: 20),
//                                     ))),
//                           ],
//                         ),
//                         Container(
//                           color: Colors.black,
//                           height: 1,
//                         ),
//                       ],
//                     ),
//                   ),
//                 count == 3
//                     ? Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Center(child: Text("Total".toUpperCase())),
//                       Row(
//                         children: [
//                           Expanded(
//                               child: Center(
//                                   child: Text(
//                                     "$totalRed",
//                                     style: TextStyle(fontSize: 20),
//                                   ))),
//                           Expanded(
//                               child: Center(
//                                   child: Text(
//                                     "$totalBlue",
//                                     style: TextStyle(fontSize: 20),
//                                   ))),
//                         ],
//                       ),
//                       Container(
//                         color: Colors.black,
//                         height: 1,
//                       )
//                     ],
//                   ),
//                 )
//                     : Container()
//               ],
//             )),
//
//             //ปุ่มล่าง
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.red,
//                       ),
//                       child: Icon(
//                         Icons.person,
//                         size: 80.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//                       ),
//                       child: Icon(
//                         Icons.person,
//                         size: 80.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
      home: TokyoPage(),
    );
  }
}

class TokyoPage extends StatefulWidget {
  const TokyoPage({Key? key}) : super(key: key);

  @override
  _TokyoPageState createState() => _TokyoPageState();
}

class _TokyoPageState extends State<TokyoPage> {

  @override
  Widget build(BuildContext context) {
    var _count = 1;
    var _redScore = 0;
    var _blueScore = 0;
    bool status = true;
    List<Widget> scoreList = [];

    countScore(bool teamR) {
      _redScore += teamR ? 10 : 9;
      _blueScore += teamR ? 9 : 10;
      _count++;
      scoreList.add(
        Column(
          children: [

          ],
        ),
      );
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Women's Light (57-60kg) Semi-final",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    size: 120.0,
                    color: Colors.red,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/flag_ireland.png',
                                ),
                                height: 50,
                              ),
                            ),
                            Text(
                              "IRELAND",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "HARRINGTON Kellie Anne",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    size: 120.0,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/flag_thailand.png',
                                ),
                                height: 50,
                              ),
                            ),
                            Text(
                              "THAILAND",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "SEESONDEE Sudaporn",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            //เส้นแดงน้ำเงิน
            Row(
              children: [
                Expanded(
                    child: Container(
                      height: 10,
                      color: Colors.red,
                    )),
                Expanded(
                    child: Container(
                      height: 10,
                      color: Colors.blue,
                    )),
              ],
            ),


            Expanded(
              child: Column(
                children: [

                ],
              ),
            ) ,

            //ปุ่มล่าง
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}