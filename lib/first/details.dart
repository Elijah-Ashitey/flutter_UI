import 'package:flutter/material.dart';

import 'widget/details/date.dart';
import 'widget/details/list_buttons.dart';
import 'widget/details/progress.dart';

class Details extends StatefulWidget {
  final String name;
  final String img;
  final String amt;
  final String amt2;
  final int progress;
  final String date;
  final heroTag;
  Details(this.name, this.img, this.amt, this.amt2, this.progress, this.date,
      {this.heroTag});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(60, 162, 151, 1),
      ),
      // backgroundColor: Colors.greenAccent,
      body: Column(
        children: <Widget>[
          Container(
            // color: Color.fromRGBO(60, 162, 151, 1),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                image: new DecorationImage(
              image: new AssetImage(widget.img),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                widget.name,
                style: TextStyle(
                    color: Color.fromRGBO(60, 162, 151, 1), fontSize: 30),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.3,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Progress(widget.amt, widget.amt2, widget.progress),
                  DateW(widget.date),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Refill",
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue[50],
                  // color: Color.fromRGBO(244, 248, 251, 9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: DetailButtons(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
