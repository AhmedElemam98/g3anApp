import 'package:flutter/material.dart';

class DeliveryDetails extends StatefulWidget {
  @override
  _DeliveryDetailsState createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delivery Details',
          style: TextStyle(
              fontSize: 19, fontFamily: 'Ubunto', color: Colors.black),
        ),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.purple),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300]),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'First Name',
                  hintStyle: TextStyle(
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300]),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Last Name',
                  hintStyle: TextStyle(
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300]),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300]),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'City',
                  hintStyle: TextStyle(
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300]),
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Street Address',
                  hintStyle: TextStyle(
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DeliveryDetails()));
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange),
                  child: Center(
                    child: Text(
                      'PROCESS TO PAYMENT',
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
    );
  }
}
