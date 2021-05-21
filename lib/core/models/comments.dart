import 'package:flutter/material.dart';

class Comments {
  final String comment;
  final String id;
  int likes;
  String date;

  Comments({@required this.id,this.comment, this.likes, this.date});
}