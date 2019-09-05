import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../stores/counter/state.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counterProvider = Provider.of<CounterStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider counter page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _counterProvider.count.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => _counterProvider.dispatch(CounterTypes.decrement),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => _counterProvider.dispatch(CounterTypes.increment),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
