/*

Create a counter class and create a getter to use the counter value outswide the class

--------------------------------------------------------------

Getter lets the code read the current counter value from outside the class, without giving direct access to the private _counter.

*/

class Counter {
  int _counter = 0;

  int get count => _counter;

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    _counter--;
  }

  void resetCounter() {
    _counter = 0;
  }
}
