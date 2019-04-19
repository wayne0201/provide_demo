import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _value;
  /* value 只读，只能通过暴露的方法改变 */

  int get value => _value;

  Counter(this._value);

  add() {
    _value++;
    notifyListeners();
  }

  minus() {
    _value--;
    notifyListeners();
  }
}
