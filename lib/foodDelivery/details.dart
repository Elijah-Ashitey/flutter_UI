import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:my_ui/foodDelivery/foodHome.dart';

class FoodDetails extends StatefulWidget {
  final Popular data;
  FoodDetails(this.data);
  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  Color grey = Color(0XFFF0F2F5);
  Color deepgrey = Color(0XFFBAC3C2);
  Color orange = Color(0XFFF49609);
  Color deepBrown = Color(0XFF442C1B);
  Color brown = Color(0XFFBB4D1C);
  Color lightbrown = Color(0XFFDFB354);
  Color green = Color(0XFF728E47);
  String amt = "\$5.99";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.grey,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    // width: double.maxFinite,
                    decoration: BoxDecoration(
                      // gradient: getCustomgradient(),
                      color: orange,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 17,
                      ),
                      shape: RoundedRectangleBorder(
                          // side: BorderSide(
                          //     color: Colors.grey,
                          //     width: 1,
                          //     style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ],
              ),
              Text(
                widget.data.title,
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              // Text("\u\$"),
              /* EasyRichText(
              amt,
              patternList: [
                EasyRichTextPattern(
                  targetString: '\$ ',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
              defaultStyle: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: lightbrown),
            ),*/

              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "\$",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: brown),
                  ),
                  Text(
                    "5.99",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: brown),
                  )
                ],
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Spacer(),
                        desc("Size", "Medium 14\""),
                        Spacer(),
                        desc("Crust", "Thin Crust"),
                        Spacer(),
                        desc("Delivery in", "30 min"),
                        Spacer(),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, bottom: 15),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage(popData[index].image),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: popData.length,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Place an Order ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              )),
              // desc("Size", "Medium\""),
              // desc("Size", "Medium\""),
              // desc("Size", "Medium\""),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Hero(
              tag: widget.data.image,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(widget.data.image),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

desc(title, desc) {
  Color deepgrey = Color(0XFFBAC3C2);

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        title,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: deepgrey),
      ),
      Text(
        desc,
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.black),
      )
    ],
  );
}
