import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CountdownClock extends StatefulWidget {
  final VoidCallback timeup;
  final int timeLength;
  const CountdownClock({Key key, this.timeup, this.timeLength})
      : super(key: key);

  @override
  _CountdownClockState createState() => _CountdownClockState();
}

class _CountdownClockState extends State<CountdownClock> {
  Timer _timer;
  int _start;
  bool started = false;
  void startTimer() {
    if (!started) {
      started = true;
      const oneSec = const Duration(seconds: 1);
      _timer = new Timer.periodic(
        oneSec,
        (Timer timer) {
          if (_start == 0) {
            widget.timeup();
            setState(() {
              timer.cancel();
            });
          } else {
            setState(() {
              _start--;
            });
          }
        },
      );
    }
  }

  @override
  void dispose() {
    if (_timer != null) _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    startTimer();
    return Center(
      child: Text(
        "$_start",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  void initState() {
    _start = widget.timeLength;
    super.initState();
  }
}
