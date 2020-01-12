import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar:AppBar(
          title:Center(child:Text('Ask Me Anything'),),
          backgroundColor: Colors.blue[900],
        ),
        body: Magic8ball(),
      ),
    ),
  );
}

class Magic8ball extends StatefulWidget {
  @override
  _Magic8ballState createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Center(
        child: Container(child: Image.asset('images/ball$ballno.png')),
      ),
      onPressed: () {
        setState(() {
          ballno = Random().nextInt(5) + 1;
        });
      },
    );
  }
}
