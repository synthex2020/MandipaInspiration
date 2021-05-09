/*
    This holds the widgets for the about page.
    Unable to separate the widgets
 */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class About extends StatelessWidget {

  //use a database stub
  String about = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/mandi-main.png")),
            SizedBox(height: MediaQuery.of(context).size.height/20,),
            //what mandi does and shit about her in general she is also an author
            Text(about , maxLines: 100, style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 14
            ),),
            //visit my site
            TextButton(
              onPressed: () {
                _launchUrl("https:www.mandiinspiration.com");
              },
              child: Center(child: Text('visit my website' , style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14
              ),),),
            ),
            //Contact information
            Text("Contact me" , style: GoogleFonts.pacifico(
                color: Colors.black,
                fontSize: 25
            ),),
            FlatButton(
                onPressed: () {
                  _launchUrl("tel:+431 388 3047");
                },
                child: Center(child: Text('204 333 4944' , style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 14
                ),),)
            ),
            FlatButton(
                onPressed: () {
                  _launchUrl("mailto:synthex2020@gmail.com?subject=Hello&body=Hi");
                },
                child: Center(child: Text('mandipa@mandipainspirations.com' , style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 14
                ),),)
            ),

          ],
        )
    );
  }

  void _launchUrl(String url) async{
    if(await canLaunch(url)) {
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }//end if-else
  }//end launch url
}

