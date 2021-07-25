import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:mavericks_rps/hierarchy.dart';
import 'package:mavericks_rps/auxiliary_widgets/timer.dart';
import 'package:mavericks_rps/provider/victory_provider.dart';
import 'package:provider/provider.dart';

class ComputerDecisionBottom extends StatefulWidget {
  const ComputerDecisionBottom({Key key}) : super(key: key);

  @override
  _ComputerDecisionBottomState createState() => _ComputerDecisionBottomState();
}

class _ComputerDecisionBottomState extends State<ComputerDecisionBottom> {
  @override
  Widget build(BuildContext context) {
    if (context.watch<VictoryProvider>().botchoice == null) {
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
                AssetImage(context.read<VictoryProvider>().botchoice['icon']),
            fit: BoxFit.fitHeight,
          ),
        ),
      );
    }
  }

  void selectFist() {
    context
        .read<VictoryProvider>()
        .botFist(weapons[Random().nextInt(weapons.length)]);
    context.read<VictoryProvider>().determineVictor();
  }
}
