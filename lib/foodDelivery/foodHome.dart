import 'package:flutter/material.dart';

import 'details.dart';

class FoodHome extends StatefulWidget {
  @override
  _FoodHomeState createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  Color grey = Color(0XFFF0F2F5);
  Color deepgrey = Color(0XFFBAC3C2);
  Color orange = Color(0XFFF49609);
  Color deepBrown = Color(0XFF442C1B);
  Color brown = Color(0XFFBB4D1C);
  Color lightbrown = Color(0XFFDFB354);
  Color green = Color(0XFF728E47);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0, left: 25, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[CircleAvatar(), Icon(Icons.filter_list)],
            ),
            SizedBox(
              height: 10,
            ),
            Text("Food"),
            Text(
              "Delivery",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.search),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    height: 25,
                    // color: Colors.blue,
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      // textAlign: TextAlign.center,
                      // controller: controller,
                      decoration: InputDecoration(
                        hintText: 'search..',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: deepgrey,
                          // fontFamily: 'gotham',
                          letterSpacing: 1,
                        ),

                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: deepgrey,
                          ),
                        ),

                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          width: 2,
                          color: deepgrey,
                        )),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 2,
                child: Container(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: index == 0 ? orange : Colors.white,
                          elevation: 6,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.27,
                            // height: MediaQuery.of(context).size.height * 0.1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Spacer(),
                                Icon(data[index].icon),
                                Spacer(),
                                Text(data[index].desc),
                                Spacer(),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: index == 0
                                      ? Colors.white
                                      : Colors.pinkAccent,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: index == 0
                                        ? Colors.black
                                        : Colors.white,
                                    size: 10,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Popular",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      FoodDetails(popData[index])));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                width: MediaQuery.of(context).size.width * 0.82,
                                child: Card(
                                  // color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15.0, top: 17),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  size: 12,
                                                  color: orange,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  popData[index].top,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
                                            ),
                                            Text(
                                              popData[index].title,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              popData[index].desc,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: deepgrey,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.07,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.27,
                                                decoration: BoxDecoration(
                                                  color: orange,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                  ),
                                                ),
                                                child: FlatButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "+",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 25),
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 12,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "5.0",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Card(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0),
                                  ),
                                  child: Hero(
                                    tag: popData[index].image,
                                    child: CircleAvatar(
                                      radius: 60,
                                      backgroundImage:
                                          AssetImage(popData[index].image),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: popData.length,
                    scrollDirection: Axis.vertical,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class Categories {
  final IconData icon;
  final String desc;
  Categories(this.icon, this.desc);
}

Categories data1 = Categories(Icons.local_pizza, "Pizza");
Categories data2 = Categories(Icons.local_pizza, "Seafood");
Categories data3 = Categories(Icons.local_drink, "Soft drink");
Categories data4 = Categories(Icons.local_pizza, "pizza");
List<Categories> data = [data1, data2, data3, data4];

class Popular {
  final String image;
  final String title;
  final String desc;
  final String top;
  Popular(
    this.image,
    this.title,
    this.desc,
    this.top,
  );
}

Popular first = Popular("assets/images/pizza.jpg", "Primavera Pizza",
    "Weight 540 gr", "top of the week");
Popular second = Popular("assets/images/pizza2.jpg", "Paste Pesto",
    "Weight 540 gr", "top of the month");
Popular third = Popular("assets/images/pizza3.jpg", "Primavera Pizza",
    "Weight 540 gr", "top of the week");
Popular fourth = Popular("assets/images/pizza4.jpg", "Primavera Pizza",
    "Weight 540 gr", "top of the month");
Popular fifth = Popular("assets/images/pizza4.jpg", "Primavera Pizza",
    "Weight 540 gr", "top of the week");
List<Popular> popData = [first, second, third, fourth, fifth];
