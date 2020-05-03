import 'package:flutter/material.dart';

class UI4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Column(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.53,
          width: MediaQuery.of(context).size.width,
          // color: Colors.orange,
          child: Stack(children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  50.0,
                ),
              ),
              child: Container(
                color: Colors.lightGreenAccent,
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: Column(children: <Widget>[Text("ELijah work")]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30.0,
                      ),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.3,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "View Detail",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  )),
            )
          ]),
        ),
        Expanded(
          child: Container(
            // color: Colors.yellowAccent,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    "Overview",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        overview(context, "24", "Days"),
                        overview(context, "64%", "Humidnity")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        overview(context, '15.6"', "Diameter"),
                        overview(context, '13"', "Height")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottom(context)
      ]),
    );
  }
}

bottom(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(
        20.0,
      ),
      topRight: Radius.circular(
        20.0,
      ),
    ),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.08,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Add to card",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white30,
                  // size: 18,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                  // size: 18,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  // size: 18,
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget overview(BuildContext context, title, subtitle) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.4,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 70.0,
          height: 70.0,
          padding: const EdgeInsets.all(2.0), // borde width
          decoration: new BoxDecoration(
            color: Colors.green[100], // border color
            shape: BoxShape.circle,
            border: new Border.all(
              width: 2.0,
              color: Colors.green,
            ),
          ),
          child: Icon(
            Icons.tab,
            color: Colors.green,
            size: 20,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.03,
        ),
        // Column(

        //   children: <Widget>[],
        // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 17),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.01,
            ),
            Text(subtitle),
          ],
        ),
      ],
    ),
  );
}
