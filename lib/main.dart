import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('DICEE'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDie = 1;
  int leftDie = 1;

  void rollDie() {
    setState(() {
      rightDie = Random().nextInt(6) + 1;
      leftDie = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDie();
              },
              child: Image.asset('images/dice$rightDie.png'),
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: () {
                rollDie();
              },
              child: Image.asset('images/dice$leftDie.png'),
            ),
          ),
        ],
      ),
    );
  }
}
