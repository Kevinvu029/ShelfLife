import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  set pageIndex(int value) {
    _pageIndex = value;
  }

  int _numFoodAdded = 0;
  int get numFoodAdded => _numFoodAdded;
  set numFoodAdded(int value) {
    _numFoodAdded = value;
  }
}
