import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePageProvider extends ChangeNotifier {
  Color newColorContainer = const Color(0xffffffff);
  Color newColorTitle = const Color(0xffffffff);
  bool isSwitched = true;

  onSwitched() {
    isSwitched = !isSwitched;

    randomContainerColor();
    randomTitleColor();
    notifyListeners();
  }

  void randomContainerColor() {
    newColorContainer = Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
    // notifyListeners();
  }

  void randomTitleColor() {
    newColorTitle = Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
    // notifyListeners();
  }
}
