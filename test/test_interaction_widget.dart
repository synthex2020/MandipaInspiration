import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'interaction_widget_test.dart';

void main () {
  testWidgets('add and remove a todo', (WidgetTester tester) async {
    //build the widget using widget tester
    await tester.pumpWidget(TodoList());
    //enter hi into the test field
    await tester.enterText(find.byType(TextField), 'hi');
    //add the button
    await tester.tap(find.byType(FloatingActionButton));
    //rebuild the widget after the state has changed
    await tester.pump();
    //expect to find the item on screen
    expect(find.text('hi'), findsOneWidget);
    //swipe the item to dismiss it
    await tester.drag(find.byType(Dismissible), Offset(500.0,0.0));
    //build the widget until the dismiss animation ends
    await tester.pumpAndSettle();
    //ensure the item is no longer on screen
    expect(find.text('hi'), findsNothing);
  });
}
