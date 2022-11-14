import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false, title: "Dice App", home: HomePage()));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

          //Image
          Center(
            child: Image.asset(
              "assests/$diceNumber.jpg",
              height: 250,
              width: 250,
            ),
          ),

          //Button
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: Text(
              "Roll",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 70),

          //Footer
          Text("#FlutterCodingNepal",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
