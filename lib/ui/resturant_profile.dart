import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:g3aan/Models/ResturantsData.dart';
import 'package:g3aan/ui/cart.dart';
import 'package:g3aan/ui/map.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating/flutter_rating.dart';
import '../ui/item_details.dart';

class ResturantProfile extends StatefulWidget {
  final ResturantsData res;
  ResturantProfile(this.res);

  @override
  _ResturantProfileState createState() => _ResturantProfileState();
}

class _ResturantProfileState extends State<ResturantProfile> {
  Widget _buildMenu() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ItemDetails()));
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, top: 15, bottom: 10, right: 30),
        child: Container(
          height: 100,
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage('assets/screens/pizza1.jpg'),
                            fit: BoxFit.cover))),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'SeafoodPizza -',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Ubunto',
                            ),
                          ),
                          Text(
                            ' \$ ' + '12',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Ubunto',
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'Bored with old pizza? Well, you’ll enjoy making this herbed shrimp .',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReview() {
    return ListView.builder(
      itemCount: 39,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Container(
            height: 150,
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/screens/37780503_1029176787264072_30845003420925952_n.jpg'),
                                  fit: BoxFit.contain))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Ahmed Elemam',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Ubunto',
                              ),
                            ),
                            Text(
                              '${DateFormat.yMMMEd().format(DateTime.now()).toString()}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      StarRating(
                        size: 18.0,
                        rating: 4,
                        color: Colors.orange,
                        borderColor: Colors.grey,
                        starCount: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Bored with old pizza? Well, you’ll enjoy making this herbed shrimp .',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(
          height: 270,
          child: Stack(
            children: <Widget>[
              SizedBox(
                  height: 260.0,
                  width: MediaQuery.of(context).size.width,
                  child: Carousel(
                    images: [
                      AssetImage("assets/screens/pizza1.jpg"),
                      AssetImage("assets/screens/pizza2.jpg"),
                      AssetImage("assets/screens/pizza3.jpg"),
                    ],
                    dotPosition: DotPosition.bottomRight,
                    dotBgColor: Colors.transparent,
                    dotSize: 8.0,
                    dotColor: Colors.white,
                    dotIncreasedColor: Colors.orange,
                    indicatorBgPadding: 10.0,
                  )),
              SizedBox(
                height: 100,
                child: Scaffold(
                  appBar: AppBar(
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.shopping_basket,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Cart()));
                        },
                      )
                    ],
                    title: Text(
                      '${widget.res.name}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Ubunto'),
                    ),
                    centerTitle: true,
                    backgroundColor: Colors.white54,
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),

              /*
              Positioned(
                top: 10,
                child: SizedBox(
                      height: 400,
                      child: DefaultTabController(
                        length: 3,
                        child: new Scaffold(
                          appBar: new PreferredSize(
                            preferredSize: Size.fromHeight(kToolbarHeight),
                            child: new Container(
                              height: 50.0,
                              child: new TabBar(
                                tabs: [
                                  Tab(
                                      icon: Icon(
                                    Icons.directions_car,
                                    color: Colors.grey,
                                  )),
                                  Tab(
                                      icon: Icon(Icons.directions_transit,
                                          color: Colors.grey)),
                                  Tab(
                                      icon: Icon(Icons.directions_bike,
                                          color: Colors.grey)),
                                ],
                              ),
                            ),
                          ),
                          body: TabBarView(
                            children: [
                              Icon(Icons.directions_car),
                              Icon(Icons.directions_transit),
                              Icon(Icons.directions_bike),
                            ],
                          ),
                        ),
                      )

                  ),
              )
              
              */
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height -
              (270 + MediaQuery.of(context).padding.top),
          child: DefaultTabController(
            length: 3,
            child: new Scaffold(
              appBar: new PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: new Container(
                    //height: 50.0,
                    child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: new BubbleTabIndicator(
                    indicatorHeight: 45.0,
                    indicatorColor: Colors.orange,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  ),
                  tabs: <Widget>[
                    Tab(
                      text: 'Menu',
                    ),
                    Tab(
                      text: 'Place',
                    ),
                    Tab(text: 'Review'),
                  ],
                )),
              ),
              body: TabBarView(children: [
                //Menu Tab
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return _buildMenu();
                  },
                ),

                //Map Tab
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, top: 15, bottom: 10, right: 30),
                  child: Container(
                    height: 200,
                    child: MyMap(widget.res.lat, widget.res.lng),
                  ),
                ),

                //Review Tab
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '39 ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubunto',
                                  color: Colors.orange),
                            ),
                            Text(
                              'Reviews',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Ubunto',
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height -
                          (340 + MediaQuery.of(context).padding.top),
                      child: _buildReview(),
                    ),
                  ],
                )
              ]),
            ),
          ),
        )
      ],
    ));
  }
}
