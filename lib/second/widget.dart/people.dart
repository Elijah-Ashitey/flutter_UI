import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      // height: MediaQuery.of(context).size.height / 9,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(20.0), color: Colors.white),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
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
            height: 5,
          ),
          Text("Gussie"),
        ],
      ),
    );
  }
}
