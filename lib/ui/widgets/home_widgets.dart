import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//unable to separate home widgets from each other, another part of the pattern that needs further exploration
// ignore: camel_case_types
//TODO: Future plans on wrapping the coloumn in a future builder, the class will only recieve a snapshot

class Home_display extends StatelessWidget {

  //database stub
  String whoweare = "We are a writing service provider that gives publishing guidelines i.e consulting, editing, mentoring, self-publishing guide, publish with us etc to individuals and organizations around the world.";
  String ourmission = "To offer excellent and affordable writing services to everyone who desires their story to be read.";
  String hours = "24 hours, 7 days a week";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //the banner or jumbotron
        Image(image: AssetImage('images/mandi-main.png'),),
        SizedBox(height: MediaQuery.of(context).size.height/10,),
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
