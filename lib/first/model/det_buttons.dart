class Button {
  final String name;

  final double wid;

  Button({
    this.name,
    this.wid,
  });
}

final Button current = Button(
  name: '+\$ 100 ',
  wid: 100.0,
);

final Button first = Button(
  name: '+\$ 250 ',
  wid: 100.0,
);

final Button second = Button(
  name: '+\$ 500 ',
  wid: 100.0,
);

final Button third = Button(
  name: '+\$ 750 ',
  wid: 100.0,
);

List<Button> amount = [current, first, second, third];
