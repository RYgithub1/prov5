import 'package:flutter/material.dart';



class CountingModel extends ChangeNotifier {

  int _counter = 12;
  int get counter => _counter;

  set counter(int val) {
    _counter = val;
    notifyListeners();
  }

}