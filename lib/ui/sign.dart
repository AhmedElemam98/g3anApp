import 'package:flutter/material.dart';
import 'package:g3aan/ui/login.dart';
import './signup.dart';

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  //For login&signUp
  Widget _buttonProperties(String text) {
    return Container(
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Ubunto',
            color: Colors.amber,
            fontSize: 17,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0XFF525D6D),
        borderRadius: BorderRadius.circular(60),
      ),
      width: 300,
      height: 40,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/screens/login.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'G3aan',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),

                //Button for signUp
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: _buttonProperties('SIGN UP'),
                ),
                SizedBox(
                  height: 20,
                ),

                //Button for Login
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: _buttonProperties('LOG IN'),
                ),
              ],
            )));
  }
}
