import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
      //height: 100,
      // color: Colors.yellow,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
            Row(
                children:<Widget>[
                  CircleAvatar(backgroundColor: Colors.grey,
                    radius: 20.0,
                  ),
                  SizedBox(width:8),
                  Expanded(child: TextField(
                    decoration: InputDecoration.collapsed(hintText: "Whats on your mind"),
                  ) ),

                ]

            ),
            Divider(height:10.0,thickness:0.5),
            Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  TextButton.icon(
                    icon: Icon(Icons.photo,color: Colors.green),
                    onPressed: (){

                    },
                    label: Text("Photo"),
                  ),
                  VerticalDivider(width:10.0),
                  TextButton.icon(
                    icon: Icon(Icons.videocam,color: Colors.red),
                    onPressed: (){

                    },
                    label: Text("Video"),
                  ),
                  VerticalDivider(width:10.0),
                  VerticalDivider(width:10.0),
                  TextButton.icon(
                    icon: Icon(Icons.location_pin),
                    onPressed: (){

                    },
                    label: Text("Location"),
                  ),
                  VerticalDivider(width:10.0)
                ]
            )
          ]
      ),
    );
  }
}