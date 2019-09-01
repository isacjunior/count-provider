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
    final action = {
      CounterTypes.increment: _counter.increment,
      CounterTypes.decrement: _counter.decrement,
    }[type];
    action();
    notifyListeners();
  }
}
