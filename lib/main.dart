import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('AMA'),
            backgroundColor: Colors.blue,
          ),
          body: AMA(),
        ),
      ),
    );

class AMA extends StatefulWidget {
  @override
  _AMAState createState() => _AMAState();
}

class _AMAState extends State<AMA> {
  int randomAnswer = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomAnswer = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$randomAnswer.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
