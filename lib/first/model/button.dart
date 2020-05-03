class Button {
  final String name;
  final String sup;
  final int active;
  final double wid;

  Button({this.name, this.sup, this.wid, this.active});
}

final Button current =
    Button(name: 'All ', sup: "\u2078", wid: 80.0, active: 1);

final Button first = Button(name: 'New ', sup: "\u00B2", wid: 100.0, active: 2);

final Button second =
    Button(name: 'Reached ', sup: "\u00B3", wid: 130.0, active: 3);

final Button third =
    Button(name: 'ELijah ', sup: "\u00B3", wid: 100.0, active: 2);

List<Button> btn = [current, first, second, third];
