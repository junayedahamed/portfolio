import 'dart:developer';

import 'package:flutter/material.dart';

class HoverStateManager extends ChangeNotifier {
  bool _isHover1 = false, _isHover2 = false, _isHover3 = false;

  onhover1() {
    _isHover1 = !_isHover1;
    log("messagefjadhsgf");
    notifyListeners();
  }

  onhover3() {
    _isHover3 = !_isHover3;
    notifyListeners();
  }

  onhover2() {
    _isHover2 = !_isHover2;
    notifyListeners();
  }

  bool get hovering1 => _isHover1;
  bool get hovering2 => _isHover2;
  bool get hovering3 => _isHover3;
}
