import 'package:flutter/material.dart';
// import 'package:my_ui/carDashboard/screens/homePage.dart';

import 'links.dart';
// import 'package:my_ui/second/Page1.dart';

// import 'links.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Nunito',
          // primarySwatch: Colors.black,
          primaryColor: Colors.black,
          primaryColorBrightness: Brightness.dark,
          primaryColorDark: Colors.black87),
      home: Links(),
    );
  }
}
