import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Widget _catItem(String name, String imgUrl) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              '$imgUrl',
              height: 60,
              width: 60,
              fit: BoxFit.fill,
            ),
            Text(
              '$name',
              style: TextStyle(fontFamily: 'Ubunto'),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4ECEF),
      body: Stack(children: <Widget>[
        Center(
          child: SizedBox(
            height: 600,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              padding: EdgeInsets.all(30),
              children: <Widget>[
                _catItem('Pizza', 'assets/screens/pizza.png'),
                _catItem('Taco', 'assets/screens/taco.png'),
                _catItem('Donut', 'assets/screens/donut.png'),
                _catItem('Hamburger', 'assets/screens/hamburger.png'),
                _catItem('Steak', 'assets/screens/steak.png'),
                _catItem('Cookie', 'assets/screens/cookie.png'),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 70,
              width: 70,
              child: Padding(
                  padding: EdgeInsets.only(top: 18, left: 15),
                  child: Text(
                    'X',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                    ),
                  )),
              decoration: BoxDecoration(
                  color: Color(0XFF1F2533),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70))),
            ),
          ),
        ),
      ]),
    );
  }
}
