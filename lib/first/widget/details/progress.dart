import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  final String amount;
  final int progress;

  final String amt2;
  Progress(this.amount, this.amt2, this.progress);
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.amount,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              Text(
                widget.amt2,
                style: TextStyle(
                    color: Color.fromRGBO(60, 162, 151, 0.5), fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Stack(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(25.0),
                  border: new Border.all(
                    width: 5.0,
                    color: Colors.grey[200],
                  ),
                ),
                height: 10,
                // color: Colors.grey,
              ),
              Container(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(25.0),
                  border: new Border.all(
                      width: 5.0, color: Color.fromRGBO(60, 162, 151, 1)),
                ),
                height: 10,
                width: MediaQuery.of(context).size.width / widget.progress,
                // color: Colors.green,
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }
}
