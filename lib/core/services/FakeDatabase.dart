

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mandipainspiration/core/models/comments.dart';
import 'package:mandipainspiration/core/models/posts.dart';
import 'package:mandipainspiration/core/models/users.dart';

class FakeDatabase {
  final String dbname;

  //an already established dummy database

  FakeDatabase({@required this.dbname});

  List<Posts> getUserPosts(String uid) {
    List<Posts> list = [];
    for(int k = 0; k< 100; k++){
      list.add(new Posts(postId: k.toString(),date: "some date", likes: 30,post: "..................." + k.toString()));
    }
    return list;
  }//end get user posts

  List<Comments> getUserComments() {
    List<Comments> list = [];
    for (int k = 0; k< 100; k++) {
      list.add(
        new Comments(id: k.toString(),comment: "..........." + k.toString(), likes: 40, date: "some date")
      );
    }//end for
    return list;
  }

  Users getUser() {
    return new Users(id: "someid", fname: "First name", lname: "Last name");
  }
  
  List<Users> getAllUsers() {
    List<Users> list = [];
    for (int k = 0; k< 100; k++) {
      list.add(
        new Users(id: k.toString(),fname: "first name " + k.toString(), lname: "last name")
      );
    }//end for
    return list;
  }

  Posts getPost(String id) {
    return new Posts(postId: id,date: "some date",likes: 56,post: "some post");
  }

  List<Posts> getPostsByDate(DateTime date) {
    List<Posts> list = [];
    for(int k = 0; k< 100; k++){
      list.add(new Posts(postId: k.toString(),date: date.toString(), likes: 30,post: "..................." + k.toString()));
    }
    return list;
  }

  List<Posts> getPostsByMonth(DateTime month) {
    List<Posts> list = [];
    for(int k = 0; k< 100; k++){
      list.add(new Posts(postId: k.toString(),date: month.toString(), likes: 30,post: "..................." + k.toString()));
    }
    return list;
  }

  List<Posts> getPostsByYear(DateTime year) {
    List<Posts> list = [];
    for(int k = 0; k< 100; k++){
      list.add(new Posts(postId: k.toString(),date: year.toString(), likes: 30,post: "..................." + k.toString()));
    }
    return list;
  }

  List<Posts> getallPosts() {
    List<Posts> list = [];
    for(int k = 0; k< 100; k++){
      list.add(new Posts(postId: k.toString(),date:"some date", likes: 30,post: "..................." + k.toString()));
    }
    return list;
  }

  bool removePost(String id) {
    return true;
  }

  void likePost(String id) {
    //we like the post
  }

  void dislikePost(String id) {
    //we like the post
  }

  List<Posts> getPostsByLocation(Location location) {
    List<Posts> list = [];
    for(int k = 0; k< 100; k++){
      list.add(new Posts(postId: k.toString(),date: "some date", likes: 30,post: "..................." + k.toString()));
    }
    return list;
  }

  bool deleteUserPosts(Users user) {
    return true;
  }

}