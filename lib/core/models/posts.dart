import 'package:flutter/foundation.dart';

class Posts {

  final String postId;
  final String date;
  int likes;
  String post;

  Posts({@required this.postId, this.date, this.likes, this.post});
}