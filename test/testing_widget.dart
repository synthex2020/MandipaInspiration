/*
    The purpose of this is simply to allow the testing of widgets, we need a widget to test
    to see if the testing works
 */

import 'package:flutter/material.dart';

class TestingWidget extends StatelessWidget {
  final String title;
  final String message;

  const TestingWidget({
    Key key,
    @required this.title,
    @required this.message
}): super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing demo - widget testing',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
