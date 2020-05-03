import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class UI3 extends StatefulWidget {
  @override
  _UI3State createState() => _UI3State();
}

class _UI3State extends State<UI3> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                  Center(
                    child: Text(
                      "James` car",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height / 3,
                // width: MediaQuery.of(context).size.width/4,
                child: Stack(
                  children: <Widget>[
                    // Container(
                    //     height: MediaQuery.of(context).size.height / 2,
                    //     decoration: BoxDecoration(
                    //         image: new DecorationImage(
                    //       image: new AssetImage('assets/images/corolla.jpg'),
                    //       fit: BoxFit.fill,
                    //     ))),
                    Container(
                      child: Carousel(
                        dotColor: Colors.grey,
                        dotSpacing: 15,
                        dotSize: 3,
                        dotBgColor: Colors.black,
                        moveIndicatorFromBottom: -20.0,
                        autoplay: false,
                        images: [
                          AssetImage('assets/images/corolla.jpg'),
                          AssetImage('assets/images/car.jpg'),
                          AssetImage('assets/images/corolla.jpg'),
                          AssetImage('assets/images/car.jpg'),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 180,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            // color: Colors.red,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: new BorderRadius.circular(25.0),
                              border: new Border.all(
                                color: Colors.red,
                              ),
                            ),
                            child: FlatButton(
                              onPressed: null,
                              child: Text("Status",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.battery_charging_full,
                    color: Colors.white,
                  ),
                  Text(
                    "75%",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              Container(
                // width: 100,
                // height: 100,
                // color: Colors.red,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 3.0,
                  unselectedLabelColor: Colors.grey,

                  // indicatorSize: TabBarIndicatorSize.tab,
                  // onTap: (index) {},
                  tabs: <Widget>[
                    Tab(
                      child: Container(
                          child: Text(
                        'Controls',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    ),
                    Tab(
                      child: Container(
                          child: Text(
                        'Metrics',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    ),
                    Tab(
                      child: Container(
                          child: Text(
                        'Nearby',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
              // TabBarView(
              //   children: <Widget>[],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
