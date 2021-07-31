import 'package:flutter/material.dart';

class AssignmentScore with ChangeNotifier {
  Map<int?, int?> _score = {};
  void add_score(int assn_num, int score) {
    this._score[assn_num] = score;
    notifyListeners();
  }

  int total_score() {
    int tot = 0;
    for (var k in _score.keys) {
      tot += this._score[k]!;
    }
    return tot;
  }

  int no_of_assignments_done() {
    return _score.length;
  }
}
