// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mandipainspiration/main.dart';

import 'testing_widget.dart';

void main() {
  //define a test. The test widgets functions also provides a widget tester to work with.
  //the widget tester allows you to build and interact with widgets in the test environment
  testWidgets('The testing widget has a title and message', (WidgetTester tester) async {
    //our test code then comes here
    //we create the widget by telling the tester to build it
    await tester.pumpWidget(TestingWidget(title: 'T', message: 'M'));

    //create finders
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    //use the findsOneWidget matcher provided by flutter_test to verify that the text widgets appear exactly once in the widget tree
    expect(titleFinder, findsOneWidget);
    expect(messageFinder,findsOneWidget);

    //note they are other matcher types to explore them please visit documentation link provided in read me
  });
}
