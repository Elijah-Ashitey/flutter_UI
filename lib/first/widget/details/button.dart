import 'package:flutter/material.dart';

class Buttonw extends StatefulWidget {
  final String name;

  final double wid;

  Buttonw(
    this.name,
    this.wid,
  );
  @override
  _ButtonwState createState() => _ButtonwState();
}

class _ButtonwState extends State<Buttonw> {
  @override
  Widget build(BuildContext context) {
    Color bgcolor = Colors.white;
    Color _color = Colors.lightBlue;

    return Container(
      height: 50,
      width: widget.wid,
      child: FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
        color: bgcolor,
        onPressed: () {},
        child: Text(
          widget.name,
          style: TextStyle(fontSize: 20, color: _color),
        ),
      ),
    );
  }
}
