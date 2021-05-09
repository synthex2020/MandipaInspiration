/*
    Essentially in this widget we just call the services widget to be viewed by the user

 */

import 'package:flutter/material.dart';
import 'package:mandipainspiration/ui/shared/application_colors.dart';
import 'package:mandipainspiration/ui/widgets/navigationBar.dart';
import 'package:mandipainspiration/ui/widgets/services.dart';

class Services_view extends StatelessWidget {
  //dummy content

  String contents = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services " , style: TextStyle(color: textcolor),),
        elevation: 0,
        iconTheme: IconThemeData(color: iconthemedatacolor),
        backgroundColor: appbarbackgroundcolor,
      ),
      backgroundColor: backgroundColor,
      body: Padding(padding: EdgeInsets.all(10),child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Services_widgets(title: "Self publishing",content: contents,),
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Services_widgets(title: "Publish with us",content: contents,),
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Services_widgets(title: "Mentoring",content: contents,),
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Services_widgets(title: "Education",content: contents,),
              SizedBox(height: MediaQuery.of(context).size.height/10,),

            ],
          ),
        ),
      ), ),
      bottomNavigationBar: NavigationBar(selected: 1,),
    );
  }
}
