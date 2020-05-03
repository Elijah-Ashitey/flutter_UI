// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  TextEditingController dish = TextEditingController();
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels("1", "100");

  String too = " ";
  String fromm = " ";
  TextEditingController location = TextEditingController();

  TextEditingController restaurant = TextEditingController();

  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();

  TextEditingController id = TextEditingController();
  Color _color = Colors.grey[100];
  bool _value = false;

  void onToggle(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.filter_list,
          color: Colors.black,
        ),
        title: Text(
          "Filter your search",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Row(
              children: <Widget>[
                Icon(
                  Icons.filter_list,
                ),
                Spacer(),
                Center(
                  child: Text(
                    "Filter your search",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
              ],
            ),*/
            newtext("Dish", Icons.hot_tub, dish),
            newtext("Location of your choice", Icons.location_on, location),
            newtext("Restaurant", Icons.beenhere, restaurant),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your budget:",
              style: TextStyle(
                color: Color(0xffa5a5a5),
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                budget(fromm, "From", context),
                budget(too, "To", context),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              // height: 400,
              child: RangeSlider(
                  inactiveColor: Color(0xffeaebeb),
                  activeColor: Color(0xff89dde8),
                  min: 1,
                  max: 1000,
                  values: values,
                  // divisions: 10,
                  labels: labels,
                  onChanged: (val) {
                    print("START:${val.start} ---END:${val.end}");
                    setState(() {
                      values = val;
                      fromm = val.start.toString();
                      too = val.end.toString();
                      labels = RangeLabels("\$" + val.start.toString(),
                          "\$" + val.end.toString());
                    });
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Drone delivery required",
                  style: TextStyle(
                    color: Color(0xffa5a5a5),
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                CupertinoSwitch(
//                    inactiveThumbColor: _orang,
                  activeColor: Color(0xff00ea43),
                  value: _value,
                  onChanged: (bool val) {
                    onToggle(val);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                height: 45,
                // width: 190,
                // width: double.maxFinite,
                decoration: BoxDecoration(
                  // gradient: getCustomgradient(),
                  color: Color(0xff00ea43),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Apply filters',
                        style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  ),
                  // textColor: Colors.red,
                  // shape: RoundedRectangleBorder(
                  //     side: BorderSide(
                  //         color: Colors.blue, width: 1, style: BorderStyle.solid),
                  //     borderRadius: BorderRadius.circular(6)),
                ),
              ),
            ),
            Center(
              child: FlatButton(
                onPressed: () {},
                child: Text('Reset filter',
                    style: TextStyle(color: Color(0xffa5a5a5), fontSize: 18.0)),
              ),
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}

Widget newtext(text, icons, controller) {
  Color _color = Color(0xffbdbdbd);
  Color _iconcolor = Color(0xffeaebeb);
  Color _bordercolor = Color(0xfff6f6f6);

  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Container(
      // color: Colors.blue,
      child: TextFormField(
        style: TextStyle(color: Color(0xff89dde8), fontWeight: FontWeight.bold),
        // textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icons,
            color: _iconcolor,
          ),
          hintText: text,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: _color,
            // fontFamily: 'gotham',
            letterSpacing: 1,
          ),

          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: _iconcolor,
            ),
          ),

          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            width: 2,
            color: _iconcolor,
          )),
          //border: InputBorder.none,
        ),
      ),
    ),
  );
}

budget(val, text, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        text,
        style: TextStyle(color: Color(0xffbdbdbd), fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.43,
        // width: double.maxFinite,
        decoration: BoxDecoration(
          // gradient: getCustomgradient(),
          color: Colors.transparent,
          border: Border.all(
            color: Color(0xffeaebeb),
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            val,
            style: TextStyle(
                color: Color(0xffbdbdbd), fontWeight: FontWeight.bold),
          ),
        ),
        /* TextFormField(
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xffbdbdbd), fontWeight: FontWeight.bold),
            readOnly: true,
            // controller: controller,
            initialValue: val,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,

              focusedBorder: InputBorder.none,
              //border: InputBorder.none,
            ),
          )*/
      ),
    ],
  );
}
