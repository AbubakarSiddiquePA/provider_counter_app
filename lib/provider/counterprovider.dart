import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get count {
    return _count;
  }

  void incrementCount() {
    _count = _count + 1;
    notifyListeners();
  }
}
