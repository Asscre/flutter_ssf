import 'package:flutter/material.dart';

class CountWidgetProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;


  increment() {
    _count ++;
    notifyListeners();
  }

  reduce() {
    _count --;
    notifyListeners();
  }
}