import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/provider/counterprovider.dart';

import 'counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(home: const CounterPage()),
    );
  }
}
