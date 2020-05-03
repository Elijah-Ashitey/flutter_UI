class Data {
  final String img;
  final String name;
  final String amt;
  final int progress;
  final String date;
  final String amt2;
  Data({this.img, this.name, this.amt, this.progress, this.date, this.amt2});
}

final Data one = Data(
    img: 'assets/images/images.jpg',
    name: 'Shelby GT500',
    amt: '\$ 231,150',
    progress: 2,
    date: '17 Oct 2022',
    amt2: '\$350,000');
final Data two = Data(
    img: 'assets/images/guit.jpg',
    name: 'Hummingbird',
    amt: '\$ 5,620',
    progress: 3,
    date: '25 Sep 2019',
    amt2: '\$7,499');
final Data three = Data(
    img: 'assets/images/bag.jpg',
    name: 'Kilburn ll',
    amt: '\$ 160,200',
    progress: 3,
    date: '24 Sep 2019',
    amt2: '\$350,000');
final Data four = Data(
    img: 'assets/images/car.jpg',
    name: 'Benz',
    amt: '\$ 5,150',
    progress: 4,
    date: '22 May 2022',
    amt2: '\$50,000');
final Data five = Data(
    img: 'assets/images/sneaker.jpg',
    name: 'Sneaker',
    amt: '\$ 1,150',
    progress: 6,
    date: '26 May 2022',
    amt2: '\$350,000');
List<Data> data = [one, two, three, four, five];
