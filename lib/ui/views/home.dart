/*
    Essentially in this widget we just call the home widget to be viewed by the user

 */

import 'package:flutter/material.dart';
import 'package:mandipainspiration/ui/shared/application_colors.dart';
import 'package:mandipainspiration/ui/widgets/home_widgets.dart';
import 'package:mandipainspiration/ui/widgets/navigationBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(color: textcolor),),
        elevation: 0,
        iconTheme: IconThemeData(color: iconthemedatacolor),
        backgroundColor: appbarbackgroundcolor,
      ),
      backgroundColor: backgroundColor,
      body: Padding(padding: EdgeInsets.all(10), child: SingleChildScrollView(
        child: Home_display(),
      ),),
      bottomNavigationBar: NavigationBar(selected: 0,),
    );
  }
}
