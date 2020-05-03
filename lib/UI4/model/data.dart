import 'package:flutter/material.dart';

class Data {
  final String title;
  final String subtitle;
  final Icon icon;

  Data({this.title, this.subtitle, this.icon});
}

final Data current =
    Data(title: '24 ', subtitle: "Days", icon: Icon(Icons.bug_report));

final Data first =
    Data(title: '64% ', subtitle: "Humidnity", icon: Icon(Icons.bug_report));

final Data second =
    Data(title: '15.6" ', subtitle: "Diameter", icon: Icon(Icons.view_stream));
final Data third =
    Data(title: '24 ', subtitle: "Days", icon: Icon(Icons.bug_report));
final Data fourth =
    Data(title: '13" ', subtitle: "Height", icon: Icon(Icons.voicemail));
List<Data> datium = [current, first, second, fourth];
