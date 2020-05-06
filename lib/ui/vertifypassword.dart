import 'package:flutter/material.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class VertifyPassword extends StatefulWidget {
  @override
  _VertifyPasswordState createState() => _VertifyPasswordState();
}

class _VertifyPasswordState extends State<VertifyPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter the code you have received by mail to vertify your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              VerificationCodeInput(
                itemDecoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(40)),
                keyboardType: TextInputType.number,
                length: 4,
                onCompleted: (String value) {
                  //...
                  print(value);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Center(
                        child: Text(
                          'Vertify',
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
    );
  }
}
