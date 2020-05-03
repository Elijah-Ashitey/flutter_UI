import 'package:flutter/material.dart';

import 'widget/home/all.dart';
import 'widget/home/list2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.more_horiz,
            color: Colors.grey,
            size: 30,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Goals & Wishes",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Rw1(),
            SizedBox(
              height: 30,
            ),
            List2()
            // Container(
            //   color: Colors.black26,
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(60, 162, 151, 1),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
