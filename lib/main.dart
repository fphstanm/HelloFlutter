import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(HelloFlutterApp());
}

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Start Page'),
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
  var _color = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _color = _color == Colors.white ? Colors.grey : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Text(
            'Hey there',
          ),
        ),
      ),

      backgroundColor: _color,
    );
  }
}
