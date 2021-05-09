import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//unable to separate home widgets from each other, another part of the pattern that needs further exploration
// ignore: camel_case_types
//TODO: Future plans on wrapping the coloumn in a future builder, the class will only recieve a snapshot

class Home_display extends StatelessWidget {

  //database stub
  String whoweare = "...";
  String ourmission = "....";
  String hours = "....";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //the banner or jumbotron
        Image(image: AssetImage('images/mandi-main.png'),),
        //WHo are they?
        Text("Who are we? " , style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 25
        ),),
        Text(whoweare , maxLines: 100, style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 14
        ),),
        //what do we do?
        Text("What do we do?" , style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 25
        ),),
        Text(ourmission , maxLines: 100, style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 14
        ),),
        //Our hours
        Text('The hours we work!' , style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 25
        ),),
        Text(hours , style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 14
        ),)
      ],
    );
  }
}
