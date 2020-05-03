import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String img;
  final String name;
  final String amount;
  final int progress;
  final String date;
  final String amt2;
  Product(
      this.img, this.name, this.amount, this.progress, this.date, this.amt2);
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(25.0),
                        border: new Border.all(
                          color: Colors.grey[200],
                        ),
                        image: new DecorationImage(
                          image: new AssetImage(widget.img),
                          fit: BoxFit.fill,
                        )))
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
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        widget.amount,
                        style: TextStyle(
                            color: Color.fromRGBO(60, 162, 151, 1),
                            fontSize: 17),
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
                                  width: 5.0,
                                  color: Color.fromRGBO(60, 162, 151, 1)),
                            ),
                            height: 10,
                            width: MediaQuery.of(context).size.width /
                                widget.progress,
                            // color: Colors.green,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.date,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            widget.amt2,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        // SizedBox(
        //   height: 5,
        // ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 1,
          color: Colors.grey[200],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
