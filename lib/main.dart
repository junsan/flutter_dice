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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

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
                        print('Left Button');
                      },
                      child: Image.asset('images/dice1.png'),
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
                        print('Rigth Button');
                      },
                      child: Image.asset('images/dice1.png'),
                  ),
              ),
          ),
        ],
      ),
    );
  }
}
