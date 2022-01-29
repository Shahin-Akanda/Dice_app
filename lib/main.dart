import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);


  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber=1;
  int rightDiceNumber=6;
  void changeDiceface(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDiceface();
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDiceface();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}