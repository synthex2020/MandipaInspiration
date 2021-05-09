import 'package:flutter_test/flutter_test.dart';

import 'counter.dart';

void main() {
  //the group seems to hold all the multiple texts like the root in a tree
  group('Counter', () {
    //this would be the first test, remember all {} is in the parameters of test itself
    test('value should start at 0' , () {
     expect(Counter().value, 0);
    });
    //second test
    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();
      expect(counter.value, 1);
    });
    //the third test
    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
    //fourth test, this test is meant to fail!
    test('Test is meant to fail', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 100);
    });
  });
}