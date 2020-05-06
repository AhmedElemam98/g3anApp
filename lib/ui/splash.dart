import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:g3aan/ui/Resturants.dart';
import 'package:g3aan/ui/categories.dart';
import 'package:g3aan/ui/sign.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  List<SplashModel> _splashData = new List();
  int indx = 0;

  @override
  void initState() {
    _splashData.add(SplashModel(
        img: "assets/screens/splash1.png",
        title: "Eat from the best restaurants",
        description:
            "Access all the best restaurants around you and enjoy their cuisine at home."));
    _splashData.add(SplashModel(
        img: "assets/screens/splash2.png",
        title: "Choose the food you love",
        description:
            "Our delivery service offers you a wide range of fresh meals prepared at the moment."));
    _splashData.add(SplashModel(
        img: "assets/screens/splash3.png",
        title: "sit back,\n dinner is on the way",
        description:
            "Get ready and comfortable while our bikers bring your meal at your door."));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index) {
              setState(() {
                indx = index;
              });
            },
            itemCount: _splashData.length,
            itemBuilder: (ctx, index) {
              return Transform.translate(
                offset: Offset(0, -70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('${_splashData[index].img}'),
                              fit: BoxFit.contain)),
                      height: 160,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Text(
                        '${_splashData[index].title}',
                        style: TextStyle(fontSize: 22, fontFamily: 'Ubunto'),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        '${_splashData[index].description}',
                        style:
                            TextStyle(color: Colors.grey, fontFamily: 'Ubunto'),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          Transform.translate(
              offset: Offset(0, 140),
              child: Align(
                child: DotsIndicator(
                  dotsCount: _splashData.length,
                  position: indx,
                  decorator: DotsDecorator(
                    color: Colors.black87,
                    activeColor: Colors.orange,
                  ),
                ),
                alignment: Alignment.center,
              )),
          Transform.translate(
            offset: Offset(0, -90),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Resturants()));
                },
                child: Container(
                  height: 47,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width - 60,
                  child: Center(
                    child: Text(
                      'ORDER NOW',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Ubunto'),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SplashModel {
  final String title;
  final String description;
  final String img;

  SplashModel({this.title, this.description, this.img});
}
