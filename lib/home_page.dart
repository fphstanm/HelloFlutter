import 'package:flutter/material.dart';
import 'Extensions/extended_color.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _backgroundColor = Colors.white54;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _backgroundColor.random;
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
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: _backgroundColor,
    );
  }
}