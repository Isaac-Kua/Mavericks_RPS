import 'package:flutter/material.dart';
import 'package:mavericks_rps/player_screens/playervscom_screen.dart';
import 'package:mavericks_rps/provider/victory_provider.dart';
import 'player_screens/comvscom_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => VictoryProvider())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mavericks RPS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(
              flex: 5,
            ),
            Text(
              'Select Play Mode',
              style: TextStyle(fontSize: 30),
            ),
            Spacer(flex: 1),
            RaisedButton(
              child: Text(
                "Player Vs Computer",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                context.read<VictoryProvider>().newGame();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PvCScreen()),
                );
              },
            ),
            Spacer(),
            RaisedButton(
              child: Text(
                "Computer Vs Computer",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                context.read<VictoryProvider>().newGame();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CvCScreen()),
                );
              },
            ),
            Spacer(
              flex: 5,
            )
          ],
        ),
      ),
    );
  }
}
