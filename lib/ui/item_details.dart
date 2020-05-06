import 'package:flutter/material.dart';
import 'package:g3aan/ui/cart.dart';

class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'B cafe',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Ubunto',
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.purple),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 600,
            width: MediaQuery.of(context).size.width,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      ' \$ ' + '10',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'Ubunto',
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 290,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/screens/pizza2.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 10),
                    child: Text(
                      'Bored with old pizza? Well, you’ll enjoy making this herbed shrimp .',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
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
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0XFFEAEFF2),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
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
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    child: Container(
                      width: 240,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orange),
                      child: Center(
                        child: Text(
                          'ADD TO CART',
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
          ),
        ],
      ),
    );
  }
}
