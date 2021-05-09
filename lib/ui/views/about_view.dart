/*
    Essentially in this widget we just call the services widget to be viewed by the user

 */

import 'package:flutter/material.dart';
import 'package:mandipainspiration/ui/shared/application_colors.dart';
import 'package:mandipainspiration/ui/widgets/about.dart';
import 'package:mandipainspiration/ui/widgets/navigationBar.dart';

class About_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About" , style: TextStyle(color: textcolor),),
        elevation: 0,
        backgroundColor: appbarbackgroundcolor,
        iconTheme: IconThemeData(color: iconthemedatacolor),
      ),
      backgroundColor: backgroundColor,
      body: Padding(padding: EdgeInsets.all(10),child: Center(
        child: About(),
      ),),
      bottomNavigationBar: NavigationBar(selected: 2,),
    );
  }
}
