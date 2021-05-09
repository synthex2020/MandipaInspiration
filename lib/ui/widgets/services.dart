import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
    This widget displays what services she offers, takes in 3 variables
    title and content
    For this widget the column and other wrapping widgets to prevent off screen rendering will have to be implemented
    in the views package
 */

class Services_widgets extends StatelessWidget {

  String selfPublishing;
  String title;

  Services_widgets({this.title, this.selfPublishing});

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: Center(child: Text(title , style: GoogleFonts.pacifico(
          color: Colors.black,
          fontSize: 25
      ),),),
      collapsed: Text(selfPublishing , softWrap: true, maxLines: 2, overflow: TextOverflow.ellipsis, style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 14
      ),),
      expanded: Center(child: Text(selfPublishing , softWrap: true, style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 14
      ),),),
    );
  }
}
