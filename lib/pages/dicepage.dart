import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  String cube1 = 'images/dice1.png';
  String cube2 = 'images/dice1.png';

  void changeDiceNum(){
   setState(() {
     int random1=Random().nextInt(6)+1;
     int random2=Random().nextInt(6)+1;
     cube1='images/dice$random2.png';
     cube2='images/dice$random1.png';
   });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Expanded(
            child: TextButton(
                onPressed: () => {changeDiceNum()}, child: Image(image: AssetImage(cube1)))),
        Expanded(
            child: TextButton(
                onPressed: () => {changeDiceNum()}, child: Image(image: AssetImage(cube2)))),
      ],
    );
  }
}
