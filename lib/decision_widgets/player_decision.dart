import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mavericks_rps/hierarchy.dart';
import 'package:mavericks_rps/provider/victory_provider.dart';
import 'package:provider/provider.dart';

class PlayerDecision extends StatefulWidget {
  const PlayerDecision({Key key}) : super(key: key);

  @override
  _PlayerDecisionState createState() => _PlayerDecisionState();
}

class _PlayerDecisionState extends State<PlayerDecision> {
  @override
  Widget build(BuildContext context) {
    if (context.watch<VictoryProvider>().botchoice == null) {
      return Container(
        height: 150,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: weapons.length,
            itemBuilder: hello),
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

  Widget hello(BuildContext context, int index) {
    return RaisedButton(
      padding: EdgeInsets.all(0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          image: DecorationImage(
            image: AssetImage(weapons[index]['icon']),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      onPressed: () {
        setState(() {
          context.read<VictoryProvider>().botFist(weapons[index]);
        });
      },
    );
  }
}
