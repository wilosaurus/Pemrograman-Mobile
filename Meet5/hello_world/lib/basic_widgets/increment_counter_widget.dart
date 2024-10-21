// File: basic_widgets/increment_counter_widget.dart
import 'package:flutter/material.dart';

class IncrementCounterWidget extends StatefulWidget {
  const IncrementCounterWidget({Key? key}) : super(key: key);

  @override
  _IncrementCounterWidgetState createState() => _IncrementCounterWidgetState();
}

class _IncrementCounterWidgetState extends State<IncrementCounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
