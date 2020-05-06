import 'package:flutter/material.dart';
import 'package:g3aan/Models/ResturantsData.dart';
import 'package:g3aan/ui/categories.dart';
import 'package:g3aan/ui/resturant_profile.dart';
import 'package:shimmer/shimmer.dart';

class HorizontalResturants extends StatefulWidget {
  final List<ResturantsData> resturants;
  final bool _loading;
  HorizontalResturants(this.resturants, this._loading);
  @override
  _HorizontalResturantsState createState() => _HorizontalResturantsState();
}

class _HorizontalResturantsState extends State<HorizontalResturants> {
  Widget _loadItems() {
    return Shimmer.fromColors(
        period: Duration(milliseconds: 800),
        baseColor: Colors.grey[100],
        highlightColor: Colors.white,
        child: Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    color: Colors.white,
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 7, bottom: 7),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildItemGrid(int index) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return ResturantProfile(widget.resturants[index]);
          }));
        },
        child: Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage('assets/screens/login.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/screens/steak.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 7, bottom: 7),
                child: Text(
                  '${widget.resturants[index].name},',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Ubunto',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Ready in 26 min',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return widget._loading
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 6 / 10,
            ),
            itemCount: 40,
            itemBuilder: (context, index) {
              return _loadItems();
            },
          )
        : Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:.6,
                    ),
                    itemCount: widget.resturants.length,
                    itemBuilder: (context, index) {
                      return _buildItemGrid(index);
                    }),
              ),
              Positioned(
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Categories()));
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/screens/set.png'),
                          fit: BoxFit.contain,
                        ),
                        color: Color(0XFF1F2533),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(70))),
                  ),
                ),
              ),
            ],
          );
  }
}
