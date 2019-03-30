import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int value = 0;

  add() {
    value ++;
    notifyListeners();
  }

  minus() {
    value --;
    notifyListeners();
  }

}