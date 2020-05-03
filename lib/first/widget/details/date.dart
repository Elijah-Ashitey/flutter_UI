import 'package:flutter/material.dart';

class DateW extends StatefulWidget {
  final String date;
  DateW(this.date);
  @override
  _DateWState createState() => _DateWState();
}

class _DateWState extends State<DateW> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 6,
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Icon(
                Icons.date_range,
                color: Color.fromRGBO(60, 162, 151, 0.5),
                size: 35,
              ),
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          children: <Widget>[
            Container(
              // color: Colors.green,
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Due Date",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(60, 162, 151, 0.5)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.date,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ]),
            )
          ],
        ),
      ],
    );
  }
}
