class Counter {
  int _counter = 0;
  int get counter => _counter;
  void inc() {
    _counter++;
  }

  void dec() {
    _counter--;
  }

  void reset() {
    _counter = 5;
  }
}
