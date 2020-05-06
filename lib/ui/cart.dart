import 'package:flutter/material.dart';
import '../ui/delivery_details.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
              fontSize: 19, fontFamily: 'Ubunto', color: Colors.black),
        ),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.purple),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 15, bottom: 10, right: 30),
                    child: Container(
                      height: 120,
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/screens/pizza2.jpg'),
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
                                        'SeafoodPizza ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Ubunto',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      ' \$ ' + '12',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Ubunto',
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.center,

                                    children: <Widget>[
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Color(0XFFF5C5CD),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '-',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 60,
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Color(0XFFBBE2F2),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.blueAccent,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'TOTAL : ',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                  ),
                ),
                Text(
                  '\$ 37',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Ubunto',
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DeliveryDetails()));
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange),
                child: Center(
                  child: Text(
                    'PROCESS ORDER',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Ubunto',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
