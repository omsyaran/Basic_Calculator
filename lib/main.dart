import 'package:flutter/material.dart';
import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The epic calculator',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
        children:<Widget>[
        
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF6C807F, 
              textColor: 0xFFFFFFFF,
              text: 'AC'
              ),
            CalcButton(
              fillColor: 0xFF6C807F, 
              textColor: 0xFFFFFFFF,
              text: 'C'
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '%'
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '/'
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '7'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '8'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '9'
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '*'
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '4'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '5'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '6'
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '-'
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '1'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '2'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '3'
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '+'
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '.'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '0'
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '00'
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '='
              ),
            ],
        ),

        ],
      ),
    ),
    );
  }
}
