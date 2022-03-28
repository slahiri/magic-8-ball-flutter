import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            centerTitle: false,
            title: Text('Ask Me Anything'),
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: Colors.blueGrey,
          ),
          body: MagicEightBallPage(),
        ),
      ),
    );

class MagicEightBallPage extends StatefulWidget {
  @override
  State<MagicEightBallPage> createState() => _MagicEightBallPageState();
}

class _MagicEightBallPageState extends State<MagicEightBallPage> {
  int ballNumber = 1;
  var randomBall = Random(DateTime.now().millisecondsSinceEpoch);

  void changeBall() {
    setState(() {
      ballNumber = randomBall.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex:1,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: (){
                  changeBall();
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            )
          ),
        ],
      ),
    );
  }
}
