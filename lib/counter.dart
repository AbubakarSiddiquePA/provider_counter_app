import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/provider/counterprovider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;

    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      body: Center(
        child: Text("counting $count "),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.incrementCount();
          },
          child: Icon(Icons.plus_one)),
    );
  }
}
