import 'package:flutter/material.dart';
import 'package:my_ui/second/widget.dart/people.dart';

import 'widget.dart/btn.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.lightBlue[50],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          title: RichText(
            text: TextSpan(
              text: 'T',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                    text: 'ransfer',
                    style: TextStyle(color: Colors.black, fontSize: 30)),
                // TextSpan(text: ' world!'),
              ],
            ),
          )),
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Choose account / Card",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width / 1.09,
              height: MediaQuery.of(context).size.height / 13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      "Visa ****  **** **** 3119",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 22.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        size: 50,
                      ),
                      onPressed: null,
                    ),
                  )
                ],
              ),
              // color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Choose transaction",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    BtnWidget(Icon(Icons.person), "Transfer to contacts",
                        Colors.lightBlue[100]),
                    SizedBox(
                      width: 40,
                    ),
                    BtnWidget(Icon(Icons.card_giftcard),
                        "Transfer to via card number", Colors.white),
                    SizedBox(
                      width: 40,
                    ),
                    BtnWidget(Icon(Icons.account_balance),
                        "Transfer to another bank", Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Choose transaction",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  People(),
                  SizedBox(
                    width: 30,
                  ),
                  People(),
                  SizedBox(
                    width: 30,
                  ),
                  People(),
                  SizedBox(
                    width: 30,
                  ),
                  People(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.lightBlue[100]),
                child: TextFormField(
                  decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(50.0),
                  color: Colors.black),
              child: FlatButton(
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.add_alert,
                      color: Colors.white54,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.card_giftcard,
                      color: Colors.white54,
                    ),
                    Text(
                      "My cards",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.white54,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
