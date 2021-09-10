import 'package:dicee/pages/dicepage.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee App'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}