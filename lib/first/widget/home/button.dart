import 'package:flutter/material.dart';

class Buttonw extends StatefulWidget {
  final String name;
  final String number;

  final double wid;
  final int active;
  Buttonw(this.name, this.number, this.wid, this.active);
  @override
  _ButtonwState createState() => _ButtonwState();
}

class _ButtonwState extends State<Buttonw> {
  @override
  Widget build(BuildContext context) {
    Color bgcolor = Colors.lightBlue[50];
    Color _color = Colors.blue;
    if (widget.active == 1) {
      setState(() {
        bgcolor = Colors.black54;
        _color = Colors.white;
      });
    }
    return Container(
      height: 50,
      width: widget.wid,
      child: FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
        color: bgcolor,
        onPressed: () {},
        child: Text(
          widget.name + widget.number,
          style: TextStyle(fontSize: 20, color: _color),
        ),
      ),
    );
  }
}
