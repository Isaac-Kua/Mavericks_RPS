import 'package:flutter/material.dart';
import 'package:mavericks_rps/provider/victory_provider.dart';
import 'package:provider/provider.dart';

class VictorDisplay extends StatelessWidget {
  const VictorDisplay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          context.read<VictoryProvider>().newGame();
        },
        child: Text(context.watch<VictoryProvider>().message));
  }
}
