
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeNotifier extends StateNotifier<DateTime>{
  TimeNotifier() : super(DateTime.now()){
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      state = DateTime.now();
    });
  }
}
