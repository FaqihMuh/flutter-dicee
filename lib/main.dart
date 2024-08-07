import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee!',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void randomDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; // Value is >= 1 and <= 6.
      print('Left dice got pressed. The value is = $leftDiceNumber');
      rightDiceNumber = Random().nextInt(6) + 1; // Value is >= 1 and <= 6.
      print('Right dice got pressed. The value is = $rightDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                randomDice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randomDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ], // Children
      ),
    );
  }
}
