import 'package:flutter/material.dart';
import 'package:g3aan/ui/forgotpassword.dart';
import './Resturants.dart';
import '../ui/splash.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _item(String data) {
    return Container(
      child: Center(
          child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '$data',
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
    );
  }

 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/screens/login.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.srgbToLinearGamma(),
          )),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                'Sign In',
              ),
              backgroundColor: Colors.transparent,
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _item('Email Address'),
                  SizedBox(
                    height: 20,
                  ),
                  _item('Password'),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Splash()));
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'SIGN IN',
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Ubunto',
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                        },
                        child: Text(
                          'Touch here',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontFamily: 'Ubunto',
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
