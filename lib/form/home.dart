import 'package:flutter/material.dart';

class HomeForm extends StatelessWidget {
  TextEditingController dish = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController restaurant = TextEditingController();
  TextEditingController population = TextEditingController();
  TextEditingController id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          children: <Widget>[
            Row(
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
            ),
            newtext("Dish", Icons.folder_open, dish),
            newtext("Location of your choice", Icons.location_on, dish),
            newtext("Restaurant", Icons.folder_open, dish),
          ],
        ),
      ),
    );
  }
}

Widget newtext(text, icons, controller) {
  return Container(
    // color: Colors.blue,
    child: TextFormField(
      style: TextStyle(color: Colors.grey),
      // textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Icon(
          icons,
          color: Colors.grey,
        ),
        labelText: text,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black54,
          // fontFamily: 'gotham',
          letterSpacing: 1,
        ),

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
          ),
        ),

        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          width: 2,
          color: Colors.grey,
        )),
        //border: InputBorder.none,
      ),
    ),
  );
}
