# An introduction to unit testing.
[cookbook] : https://flutter.dev/docs/cookbook/testing/unit/introduction
files used for this: counter.dart and counter_test.dart

# Using mockito for testing.
[cookbook] : https://flutter.dev/docs/cookbook/testing/unit/mocking
[medium article] : https://medium.com/flutterdevs/unit-testing-in-flutter-with-mockito-c0397a8f5d2a
[mockito dependency] : https://pub.dev/packages/mockito
[http dependency] : https://pub.dev/packages/http
[build runner dependency] : https://pub.dev/packages/build_runner
files used for this : album_main.dart and fetch_album_test.dart
Please note, follow the instructions for installing dependencies on pub.dev not the cook book. The medium article shows how to use
mockito using your own mocked classes.

# Introduction to widget testing
[cookbook] : https://flutter.dev/docs/cookbook/testing/widget/introduction
files used for this: testing_widget.dart and widget_test.dart

# Testing interactive widgets
[cookbook] : https://flutter.dev/docs/cookbook/testing/widget/tap-drag
files used for this: test_interaction_widget.dart and interaction_widget_test.dart

Please note for the mockito testing bit, due to outdated documentation there is an error when it comes to the parameters of
MockitoClient constructor, otherwise the code structure is still valid.
