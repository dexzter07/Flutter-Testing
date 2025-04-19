/* 

Testing file should always contain _test prefix on the file naming convention

___________________________________________________________________________

Testing description should be write in the form of: Given, When, Then

___________________________________________________________________________

Testing sholud follow the rule of AAA i.e., Assign, Act, Assert

setUp(){} -> test(){} -> teardown(){}

flow process
setUp(){} = setUp -> test -> setUp -> test
setUpAll(){} = setUp -> test -> test

flow process
tearDown(){} = test -> tearDown -> test -> tearDown
tearDownAll(){} = test -> test -> tearDownAll


 */

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/counter.dart';

void main() {
  late Counter counter;
  group("Counter Test", () {
    // Common Asssign
    setUp(() {
      counter = Counter();
    });

    test(
        "Given the counter value, when instantiated, then the value should be 0 ",
        () {
      // Assign
      // final Counter counter = Counter();

      // Act
      final value = counter.count;
      // Assert
      expect(value, 0);
    });

    test(
        "Given the counter value, when incremented, then the value should be 1 ",
        () {
      // Assign
      // final Counter counter = Counter();
      // Act
      counter.incrementCounter();
      final value = counter.count;
      // Assert
      expect(value, 1);
    });

    test(
        "Given the counter value, when decremented, then the value should be -1",
        () {
      // Assign
      // final Counter counter = Counter();
      // Act
      counter.decrementCounter();
      final value = counter.count;
      // Assert
      expect(value, -1);
    });

    test("Given the counter value, when reset, then the value should be 0", () {
      // Assign
      // final Counter counter = Counter();
      // Act
      counter.resetCounter();
      final value = counter.count;
      // Assert
      expect(value, 0);
    });
  });
}
