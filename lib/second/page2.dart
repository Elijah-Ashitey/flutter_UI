import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final int amount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.lightBlue[50],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: null,
          ),
          title: RichText(
            text: TextSpan(
              text: 'A',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: 'mount',
                    style: TextStyle(color: Colors.black, fontSize: 30)),
                // TextSpan(text: ' world!'),
              ],
            ),
          )),
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: <Widget>[
          Container(
            height: 10,
            // height: MediaQuery.of(context).size.height / 9,
            width: MediaQuery.of(context).size.width / 4,
            decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(20.0),
                color: Colors.white),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(100.0),
                        border: new Border.all(
                            // color: Colors.orangeAccent,
                            ),
                        image: new DecorationImage(
                          image: new AssetImage("assets/images/car.jpg"),
                          fit: BoxFit.fill,
                        ))),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: <Widget>[
                    Text("Nathaniel Harrington",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Gussie",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(child: Text("Enter Amount")),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text("\$" + amount.toString()),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("1"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("2"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("3"),
                ),
              ),
            ],
          ),
           Row(
            children: <Widget>[
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("1"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("2"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("3"),
                ),
              ),
            ],
          ),
           Row(
            children: <Widget>[
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("1"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("2"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("3"),
                ),
              ),
            ],
          ),
           Row(
            children: <Widget>[
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("1"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("2"),
                ),
              ),
              Container(
                height: 10,
                // height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    color: Colors.white),
                child: FlatButton(
                  onPressed: null,
                  child: Text("3"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
