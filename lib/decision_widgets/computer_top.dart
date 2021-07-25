import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:mavericks_rps/hierarchy.dart';
import 'package:mavericks_rps/auxiliary_widgets/timer.dart';
import 'package:mavericks_rps/provider/victory_provider.dart';
import 'package:provider/provider.dart';

class ComputerDecisionTop extends StatefulWidget {
  const ComputerDecisionTop({Key key}) : super(key: key);

  @override
  _ComputerDecisionTopState createState() => _ComputerDecisionTopState();
}

class _ComputerDecisionTopState extends State<ComputerDecisionTop> {
  @override
  Widget build(BuildContext context) {
    if (context.watch<VictoryProvider>().topchoice == null) {
      return Container(
        child: CountdownClock(
          timeLength: decisionTime,
          timeup: () {
            selectFist();
          },
        ),
      );
    } else {
      return Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          image: DecorationImage(
            image:
                AssetImage(context.read<VictoryProvider>().topchoice['icon']),
            fit: BoxFit.fitHeight,
          ),
        ),
      );
    }
  }

  void selectFist() {
    context
        .read<VictoryProvider>()
        .topFist(weapons[Random().nextInt(weapons.length)]);
  }
}
