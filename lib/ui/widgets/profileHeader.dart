import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileHeader extends StatelessWidget {
  String name="";
  String occupation="";
  ProfileHeader(String name ,String occupation)
  {
    this.name=name;
    this.occupation=occupation;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child:Column(
        children:<Widget>[
          CircleAvatar(
            radius: 70.0,
          ),
           Text("$occupation",
          style: TextStyle(
              fontSize: 15,
          )
          ),
          Text("$name",
          style: TextStyle(
              fontSize: 15,
          ),),
         
          Text("joined on",
          style: TextStyle(
              fontSize: 10,
              color: Colors.grey[600]
          )),
        ]
      ),),
    );
  }
}