import 'package:flutter/material.dart';
import 'package:g3aan/ui/splash.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //var userNameController = TextEditingController;

  Widget _itemField(String data) {
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
              title: Text('Register Now'),
              backgroundColor: Colors.transparent,
              centerTitle: true,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _itemField('User Name'),
                    SizedBox(
                      height: 20,
                    ),
                    _itemField('Email Address'),
                    SizedBox(
                      height: 20,
                    ),
                    _itemField('Password'),
                    SizedBox(
                      height: 20,
                    ),
                    _itemField('Confirm Password'),
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
                                'SIGN UP',
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
        ),
      ],
    );
  }
}
