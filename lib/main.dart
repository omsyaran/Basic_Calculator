import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
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
           Container(
            padding: EdgeInsets.only(right:12),
            child: Text(
              '345+3463',
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
              '273273',
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
              textSize: 24,
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
              textSize: 24,
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
              textSize: 24,
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
              textSize:26 ,
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
