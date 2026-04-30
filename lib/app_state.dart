import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _numFoodAdded = prefs.getInt('ff_numFoodAdded') ?? _numFoodAdded;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  set pageIndex(int value) {
    _pageIndex = value;
  }

  int _numFoodAdded = 0;
  int get numFoodAdded => _numFoodAdded;
  set numFoodAdded(int value) {
    _numFoodAdded = value;
    prefs.setInt('ff_numFoodAdded', value);
  }

  bool _hasCheckExpired = false;
  bool get hasCheckExpired => _hasCheckExpired;
  set hasCheckExpired(bool value) {
    _hasCheckExpired = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
