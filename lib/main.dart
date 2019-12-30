import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      BallPage()
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask Me Anything'
          ),
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue,
        body: Ball()
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();

}

class _BallState extends State<Ball> {

  int ballNumber = 4;

  void change() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
            change();
          });
          },
          child: Image(
              image: AssetImage(
                  'images/ball$ballNumber.png'
              )
          )
      ),
    );

  }
}
