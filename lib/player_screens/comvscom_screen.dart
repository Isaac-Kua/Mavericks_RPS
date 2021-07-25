import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mavericks_rps/decision_widgets/computer_bottom.dart';
import 'package:mavericks_rps/decision_widgets/computer_top.dart';
import 'package:mavericks_rps/auxiliary_widgets/victor_display.dart';

class CvCScreen extends StatefulWidget {
  const CvCScreen({Key key}) : super(key: key);

  @override
  _CvCScreenState createState() => _CvCScreenState();
}

class _CvCScreenState extends State<CvCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Vs Computer"),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Flexible(
              flex: 2,
              child: ComputerDecisionTop(),
            ),
            Spacer(),
            Flexible(
              flex: 1,
              child: VictorDisplay(),
            ),
            Spacer(),
            Flexible(
              flex: 2,
              child: ComputerDecisionBottom(),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
