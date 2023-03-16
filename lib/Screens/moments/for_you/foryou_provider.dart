import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<String> _word = [];
  List<String> get title4 => _word;

  void toggleFavorite(String title4) {
    final isExcist = _word.contains(title4);
    if (isExcist) {
      _word.remove(title4);
    } else {
      _word.add(title4);
    }
    notifyListeners();
  }

  bool isExcist(String title4) {
    final isExcist = _word.contains(title4);
    return isExcist;
  }

  // void clearFavorite() {
  //   _word = [];
  //   notifyListeners();
  // }
}
