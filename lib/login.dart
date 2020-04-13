import 'package:final_web/loginpage/loginpage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0)),
        elevation: 5.0,
        child: Container(
          height: 700,
          width: 1500,
          child: Row(
            children: <Widget>[
              new LoginPage(),
            ],
          ),
        ),
      ),
    );
  }
}