import 'package:flutter/material.dart';
import 'package:g3aan/ui/vertifypassword.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      child: Text(
                        'X',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/screens/lock.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Forgot',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Your Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Ubunto',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Enter the email below to receive instructions to reset your password ',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontFamily: 'Ubunto'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                      child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Your Email Address',
                      hintStyle: TextStyle(
                        fontFamily: 'Ubunto',
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(60),
                  ),
                  width: 280,
                  height: 47,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VertifyPassword()));
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Send Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubunto',
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        width: 280,
                        height: 47,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
