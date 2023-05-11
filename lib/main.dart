import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 30, 54, 66),
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Color.fromARGB(255, 63, 117, 161),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballImage = 1;
  void changeBallImage() {
    setState(() {
      ballImage = Random().nextInt(5) + 1; //used dart's math library and nextInt is property of Random()
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded( //to prevent image going outside the screen and providing default paddings
            child: TextButton(
              onPressed: () {
                changeBallImage(); //function call
              },
              child: Image.asset('images/ball$ballImage.png'), //dynamically changing image
            ),
          ),
        ],
      ),
    );
  }
}
