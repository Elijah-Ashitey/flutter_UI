import 'package:flutter/material.dart';
import 'package:my_ui/first/model/button.dart';

import 'button.dart';

class ListW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 60.0),
        scrollDirection: Axis.horizontal,
        itemCount: btn.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(children: <Widget>[
            Buttonw(btn[index].name, btn[index].sup, btn[index].wid,
                btn[index].active),
            SizedBox(
              width: 20,
            )
          ]);
        },
      ),
    );
  }
}
