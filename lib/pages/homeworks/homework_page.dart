import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 80.0,
                  color: Colors.blue,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'อานุภาพ ทับทิมแสน',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 25.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_border_sharp,
                          size: 25.0,
                          color: Colors.orange,
                        ),
                      ],
                    ),
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
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
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