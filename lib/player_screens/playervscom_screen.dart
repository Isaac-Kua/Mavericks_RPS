import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mavericks_rps/decision_widgets/player_decision.dart';
import 'package:mavericks_rps/auxiliary_widgets/victor_display.dart';
import '../decision_widgets/computer_top.dart';

class PvCScreen extends StatefulWidget {
  const PvCScreen({Key key}) : super(key: key);

  @override
  _PvCScreenState createState() => _PvCScreenState();
}

class _PvCScreenState extends State<PvCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player Vs Computer"),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Flexible(flex: 2, child: ComputerDecisionTop()),
            Spacer(),
            Flexible(
              flex: 1,
              child: VictorDisplay(),
            ),
            Spacer(),
            Flexible(flex: 2, child: PlayerDecision()),
            Spacer()
          ],
        ),
      ),
    );
  }
}
