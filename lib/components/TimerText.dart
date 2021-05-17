import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paychecked/models/timer.dart';

final timerProvider = Provider<TimerNotifier>(
  (ref) => TimerNotifier(),
);

class TimerText extends HookWidget {
  const TimerText({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final timeLeft = useProvider(timerProvider);
    print('building TimerTextWidget ${timeLeft.state.timeLeft}');
    return Text(timeLeft.state.timeLeft,
        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey));
  }
}
