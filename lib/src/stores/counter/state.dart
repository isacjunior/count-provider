import 'package:flutter/widgets.dart';
import './model.dart';

enum CounterTypes {
  increment,
  decrement,
}

class CounterStore with ChangeNotifier {
  Counter _counter = Counter(count: 0);

  int get count => _counter.count;

  void dispatch(CounterTypes type) {
    switch(type) {
      case CounterTypes.increment: _counter.increment();
      break;
      case CounterTypes.decrement: _counter.decrement();
      break;
    }
    notifyListeners();
  }
}
