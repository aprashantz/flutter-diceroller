import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(RollDice());

class RollDice extends StatelessWidget {
  const RollDice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roll Dice',
      home: DiceRoll(),
    );
  }
}

class DiceRoll extends StatefulWidget {
  const DiceRoll({Key? key}) : super(key: key);

  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int dice_number = 1;

  void rollDice() {
    setState(() {
      dice_number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("Dice Roller"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          //Image
          Image.asset(
            "assets/$dice_number.png",
            height: 200,
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: Text(
              "Roll",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.pinkAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: rollDice,
          ),
          SizedBox(
            height: 180,
          ),
          Center(child: Text("***Product of Platimal***")),
        ],
      ),
    );
  }
}
