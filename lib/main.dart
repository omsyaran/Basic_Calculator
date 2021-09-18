import 'dart:html';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp());
}

class CalcApp extends StatefulWidget{
  CalcApp({Key? key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String _history = '';
  String _expression = '';

  void numClick(String text){
    setState(() {
      _expression += text;
    });
  }
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
           Container(
            padding: EdgeInsets.only(right:12),
            child: Text(
              _history,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 24),
                color: Color(0xFF545F61),
              ),
            ),
            alignment: Alignment(1,1),
          ),

          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              _expression,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 48),
                color: Colors.white,
              ),
            ),
            alignment: Alignment(1,1),
          ),

         SizedBox(height: 40),
      
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF6C807F, 
              textColor: 0xFFFFFFFF,
              textSize: 22,
              text: 'AC',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF6C807F, 
              textColor: 0xFFFFFFFF,
              text: 'C',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '%',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '/',
              callback: numClick
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '7',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '8',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '9',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              textSize: 28,
              text: 'x',
              callback: numClick
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '4',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '5',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '6',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              textSize: 28,
              text: '-',
              callback: numClick
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF, 
              text: '1',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '2',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '3',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              textSize: 28,
              text: '+',
              callback: numClick
              ),
            ],
        ),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '.',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              text: '0',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFF283637,
              textColor: 0xFFFFFFFF,
              textSize:26 ,
              text: '00',
              callback: numClick
              ),
            CalcButton(
              fillColor: 0xFFFFFFFF, 
              textColor: 0xFF6C807F,
              text: '=',
              callback: numClick
              ),
            ],
        ),

        ],
      ),
    ),
    );
  }
}
