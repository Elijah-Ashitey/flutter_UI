import 'package:flutter/material.dart';

class DarkTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.dehaze,
          color: Colors.white,
        ),
        backgroundColor: Colors.black.withGreen(10),
        elevation: 0,
      ),
      backgroundColor: Colors.black45,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/images/bk.jpg"),
                  fit: BoxFit.cover),
              color: Colors.white,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.85),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Hello, ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Text(
                            "Favor",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Good Morning",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      )
                    ],
                  ),
                )),
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          card(),
                          card2(),
                        ],
                      ),
                    )),
                Spacer(),
                Expanded(
                    flex: 5,
                    child: Container(
                        // color: Colors.red,
                        child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            card4(list[0], context),
                            card5(list[1], context),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            card4(list[2], context),
                            card5(list[3], context),
                          ],
                        ),
                      ],
                    )

                        /* GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,

                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(4, (index) {
                    return card3(list[index].icon, list[index].color,
                        list[index].text);
                  }),
                ),
                */
                        )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

card() {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
          color: Colors.white.withOpacity(0.1),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 15, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Associations",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Farm Groups",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "23",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      Icon(
                        Icons.people,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ],
                  ))
                ],
              ),
            ),
          )),
    ),
  );
}

card2() {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Card(
          color: Colors.green,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 15, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Farmers",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Avialable Farmers",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("500",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Icon(
                        Icons.people_outline,
                        size: 30,
                        color: Colors.white54,
                      ),
                    ],
                  ))
                ],
              ),
            ),
          )),
    ),
  );
}

card3(IconData _icon, Color _color, String _text) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 25, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                _icon,
                color: _color,
              ),
              Spacer(),
              Text(
                _text,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

card4(DataforCard data, BuildContext context) {
  IconData _icon = data.icon;
  Color _color = data.color;
  String _text = data.text;

  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        // top: ,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        child: Card(
          color: Colors.white.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, top: 25, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  _icon,
                  color: _color,
                ),
                Spacer(),
                Text(
                  _text,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

card5(DataforCard data, BuildContext context) {
  IconData _icon = data.icon;
  Color _color = data.color;
  String _text = data.text;

  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        child: Card(
          color: Colors.white.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, top: 25, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  _icon,
                  color: _color,
                ),
                Spacer(),
                Text(
                  _text,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class DataforCard {
  final IconData icon;
  final Color color;
  final String text;
  DataforCard(this.icon, this.color, this.text);
}

DataforCard data1 =
    DataforCard(Icons.do_not_disturb, Colors.brown, "Manager Farmer Group");
DataforCard data2 =
    DataforCard(Icons.donut_large, Colors.purpleAccent, "Manager Farmers");
DataforCard data3 = DataforCard(Icons.dvr, Colors.teal, "Manager Farmers");
DataforCard data4 = DataforCard(Icons.comment, Colors.red, "Send Message");

List<DataforCard> list = [data1, data2, data3, data4];
