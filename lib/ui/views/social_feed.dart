import 'package:flutter/material.dart';
import 'package:mandipainspiration/core/models/Post.dart';
import 'package:mandipainspiration/ui/widgets/CreatePost.dart';
class SocialPage extends StatelessWidget{
  List<Post> posts;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:
        CustomScrollView(

            slivers:<Widget>[
              SliverAppBar(
                //pinned: true,
                  brightness: Brightness.light,
                  backgroundColor: Colors.white,
                  floating: true,
                  flexibleSpace:FlexibleSpaceBar(
                    title: Text(
                      'Feed',
                      style:TextStyle(color: Colors.black),

                    ),
                    centerTitle: false,
                  )
              ),
              SliverToBoxAdapter(
                  child: CreatePost()
              )
            ]
        )

    );
  }

}