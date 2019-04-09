import 'package:flutter/material.dart';
import 'package:flutter_restart/flutter_restart.dart';

void main() {
  runApp(
    RestartWidget(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Restart Example',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Restart (Page 1)'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("$_counter"),
            RaisedButton(
              child: Text('Increment Counter'),
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
            ),
            RaisedButton(
              child: Text('Open Page 2'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PageTwo();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Restart (Page 2)'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: Text('Close Page'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              child: Text('Restart App'),
              onPressed: () {
                RestartWidget.of(context).restartApp();
              },
            ),
          ],
        ),
      ),
    );
  }
}
