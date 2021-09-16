import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The epic calculator app',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          CalcButton(
            key: key, 
            fillColor: 0xFF6C807F, 
            text: 'AC'
            ),
          CalcButton(
            key: key, 
            fillColor: 0xFF6C807F , 
            text: 'C'
            ),
          CalcButton(
            key: key, 
            fillColor: 0xFFFFFFFF, 
            textColor: 0xFF6C807F,
            text: '%'
            ),
           CalcButton(
            key: key, 
            fillColor: 0xFFFFFFFF, 
            textColor: 0xFF6C807F,
            text: '/'
            ),
          ],
        ),
       ),
      ),
    );
  }
}
