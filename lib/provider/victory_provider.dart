import 'package:flutter/material.dart';
import 'package:mavericks_rps/hierarchy.dart';

class VictoryProvider with ChangeNotifier {
  Map _topchoice;
  Map _botchoice;
  String _message = 'awaiting decision';

  Map get topchoice => _topchoice;
  Map get botchoice => _botchoice;
  String get message => _message;

  void newGame() {
    _topchoice = null;
    _botchoice = null;
    _message = 'awaiting decision';
    notifyListeners();
  }

  void topFist(Map input) {
    _topchoice = input;
    determineVictor();
    notifyListeners();
  }

  void botFist(Map input) {
    _botchoice = input;
    notifyListeners();
  }

  void determineVictor() {
    if (_botchoice == null) {
      _message = 'Top player wins';
    } else if (_topchoice['weakness'].contains(_botchoice['name'])) {
      _message = 'Bottom player wins';
    } else if (_botchoice['weakness'].contains(_topchoice['name'])) {
      _message = 'Top player wins';
    } else {
      _message = 'Draw';
    }
    _message += '! Press to restart';
    notifyListeners();
  }
}
