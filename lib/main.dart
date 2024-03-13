import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Flutter Dice',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold
          )
        )
      ),
      body: DicePage(),
    )
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice = 6;
  int rightDice = 4;

  void changeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Container (
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.white
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  margin: EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Image.asset('images/dice$leftDice.png'),
                  )
              )
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                    color: Colors.white
                ),
              ),
              margin: EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
