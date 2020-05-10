import 'package:flutter/material.dart';
import 'package:my_ui/Farmer/darktheme.dart';

import 'Farmer/whitetheme.dart';
import 'UI4/Screen/homePage.dart';
import 'carDashboard/screens/homePage.dart';
import 'first/home.dart';
import 'foodDelivery/foodHome.dart';
import 'form/home.dart';
import 'second/Page1.dart';
// import 'second/page2.dart';

class Links extends StatefulWidget {
  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My UI"),
        ),
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(children: <Widget>[
              _card("First Page", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
              _card("Second Page", () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              }),
              _card("Third Page", () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UI3()));
              }),
              _card("Fouth Page", () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UI4()));
              }),
              _card("Fith Page", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WhiteTheme()));
              }),
              _card("Fith Page", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DarkTheme()));
              }),
              _card("Form", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeForm()));
              }),
              _card("Food Delivery", () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FoodHome()));
              }),
            ]),
          ),
        )
        /*Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("First Page"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            )
          ],
        ),
      ),*/
        );
  }
}

Widget _card(String title, Function fun) {
  return Card(
      child: ListTile(
    onTap: fun,
    title: Text(title),
  ));
}
