import 'package:flutter/material.dart';

import 'package:my_ui/first/model/det_buttons.dart';

import 'button.dart';

class DetailButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 60.0),
        scrollDirection: Axis.horizontal,
        itemCount: amount.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(children: <Widget>[
            Buttonw(amount[index].name, amount[index].wid),
            SizedBox(
              width: 20,
            )
          ]);
        },
      ),
    );
  }
}
