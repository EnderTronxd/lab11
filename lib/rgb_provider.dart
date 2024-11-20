import 'package:flutter/material.dart';

class RGBProvider with ChangeNotifier {
  int _red = 128;
  int _green = 128;
  int _blue = 128;

  int get red => _red;
  int get green => _green;
  int get blue => _blue;

  void updateRed(int value) {
    _red = value;
    notifyListeners();
  }

  void updateGreen(int value) {
    _green = value;
    notifyListeners();
  }

  void updateBlue(int value) {
    _blue = value;
    notifyListeners();
  }

  Color get currentColor => Color.fromRGBO(_red, _green, _blue, 1);
}
