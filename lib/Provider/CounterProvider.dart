import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  int _counter = 0;

  // Getter for the counter value
  int get counter => _counter;

  get increaseValue => null;

  // Method to increment the counter and notify listeners
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
