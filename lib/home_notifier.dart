import 'package:flutter/material.dart';
import 'package:hive_preferences/preferences.dart';

class HomeNotifier extends ChangeNotifier {
  final Preferences _preferences;

  int _state = 0;

  HomeNotifier(this._preferences);

  int get state => _state;

  void init() {
    _state = _preferences.getCounter();
    notifyListeners();
  }

  void incrementCounter() async {
    _state += 1;
    await _preferences.setCounter(_state);
    notifyListeners();
  }
}
