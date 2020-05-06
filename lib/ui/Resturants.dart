import 'package:flutter/material.dart';
import 'package:g3aan/Models/ResturantsData.dart';
import 'package:g3aan/scoped_models/ResturantsData_services.dart';
import 'package:g3aan/ui/SubResturants/horizontal_resturants.dart';
import 'package:g3aan/ui/cart.dart';
import './SubResturants/vertical_resturants.dart';
import './SubResturants/horizontal_resturants.dart';

class Resturants extends StatefulWidget {
  @override
  _ResturantsState createState() => _ResturantsState();
}

class _ResturantsState extends State<Resturants> {
  ResturantsModel _resturants = ResturantsModel();
  bool _loading = false;

  @override
  void initState() {
    _getRes();
    super.initState();
  }

  _getRes() async {
    setState(() {
      _loading = true;
    });
    ResturantsDataServices _loadResturants = new ResturantsDataServices();
    ResturantsModel _getResturants =
        await _loadResturants.loadCategoriesResponse();
    setState(() {
      _resturants = _getResturants;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            iconTheme: IconThemeData(color: Colors.red),
            backgroundColor: Colors.white,
            title: Text(
              'Resturants Nearby',
              style: TextStyle(fontFamily: 'Ubunto', color: Color(0XFF535763)),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.redAccent,
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Cart()));
                },
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  icon: Image.asset(
                    'assets/screens/list.png',
                    height: 24,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    'assets/screens/grid.png',
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          // drawer: Drawer(),
          body: _loading
              ? TabBarView(
                  children: <Widget>[
                    VerticalResturants(_resturants.restaurants, true),
                    HorizontalResturants(_resturants.restaurants, true)
                  ],
                )
              : TabBarView(
                  children: <Widget>[
                    VerticalResturants(_resturants.restaurants, false),
                    HorizontalResturants(_resturants.restaurants, false)
                  ],
                )),
    );
  }
}
