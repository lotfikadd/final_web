import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_buttons/social_media_button.dart';

class LoginPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Container(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign in to ',
                    style: GoogleFonts.questrial(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1),
                  ),
                  Text(
                    'PickUpCourses',
                    style: GoogleFonts.questrial(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue[900],
                        letterSpacing: 2),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'Enter your details below',
                    style: TextStyle(color: Colors.grey),
                  )),
              SizedBox(
                height: 200,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: '',
                    icon:Icon(Icons.supervised_user_circle),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                    enabledBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Container(
                width: 400,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.lock),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                    enabledBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.blue[900],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    OutlineButton(
                      padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                      borderSide: BorderSide(
                        color: Colors.blue[900],
                      ),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.quantico(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(top: 20),

                width: 300,
                decoration: BoxDecoration(border: Border(top: BorderSide(color:Colors.grey,))),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: <Widget>[
                      SocialMediaButton.facebook(
                        url: null
                        ),
                      SizedBox(
                        width: 20,
                      ),
                      SocialMediaButton.linkedin(
                        url: null
                        ),
                      SizedBox(
                        width: 20,
                      ),
                      SocialMediaButton.whatsapp(
                        url: null
                        ),
                      SizedBox(
                        width: 20,
                      ),
                      SocialMediaButton.youtube(
                        url: null
                        ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
