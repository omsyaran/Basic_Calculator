import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget{
  final String text;
  final int textColor;
  final int fillColor;
  final double textSize;
  final Function callback;
  const CalcButton({ Key? key, 
  required this.fillColor, 
  required this.text, 
  this.textColor=0xFFFFFFF, 
  this.textSize=28,
  required this.callback,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context){
   return Container(
     margin: EdgeInsets.all(10),
     child: SizedBox(
         width: 65,
         height: 65,
         // ignore: deprecated_member_use
         child: FlatButton(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50),
           ),
           child: Text(
             text,
             style: GoogleFonts.rubik(
               textStyle: TextStyle(
                 fontSize: textSize,
               ),
             ),
           ),
           onPressed: (){
             callback(text);
           },
           // ignore: unnecessary_null_comparison
           color: fillColor != null ? Color(fillColor):null,
           textColor: Color(textColor),
         ),
       ),
    );
  }
}