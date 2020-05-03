import 'package:flutter/material.dart';
import 'package:my_ui/first/details.dart';
import 'package:my_ui/first/model/data.dart';

import 'product.dart';

class List2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 60,
      child: ListView.builder(
        // padding: EdgeInsets.only(right: 60.0),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Row(
              children: <Widget>[
                Product(data[index].img, data[index].name, data[index].amt,
                    data[index].progress, data[index].date, data[index].amt2),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    data[index].name,
                    data[index].img,
                    data[index].amt,
                    data[index].amt2,
                    data[index].progress,
                    data[index].date,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
