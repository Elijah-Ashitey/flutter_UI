import 'package:flutter/material.dart';

class BtnWidget extends StatefulWidget {
  final Icon _icon;
  final String _text;
  final Color _color;
  BtnWidget(this._icon, this._text, this._color);
  @override
  _BtnWidgetState createState() => _BtnWidgetState();
}

class _BtnWidgetState extends State<BtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 3.7,
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.lightBlue[100], blurRadius: 0.1, spreadRadius: 1),
          // ],
          ),
      child: FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
        color: widget._color,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            widget._icon,
            SizedBox(
              height: 12,
            ),
            Text(widget._text),
          ],
        ),
      ),
    );
  }
}
