import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApps());

class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  int leftNumber = 1;
  int rightNumber = 1;
  void change() {
    setState(() {
      rightNumber = Random().nextInt(6) + 1;
      leftNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'A DICE GAME By Jimawo Emmanuel',
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    change();
                  },
                  child: Image(
                    image: AssetImage('images/dice$leftNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    change();
                  },
                  child: Image(
                    image: AssetImage('images/dice$rightNumber.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
