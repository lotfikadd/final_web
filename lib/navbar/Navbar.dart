import 'package:final_web/loginpage/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Pick UP Courses",
              style: GoogleFonts.questrial(
                  fontWeight: FontWeight.bold, color: Colors.blue[900],fontSize: 35),
            ),
            Row(
              children: <Widget>[
                Text(
                  "Accueil",
                  style: GoogleFonts.questrial(color: Colors.grey,
                  fontSize: 20.0),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Tarification",
                  style: GoogleFonts.questrial(color: Colors.grey,
                  fontSize: 20.0),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "FAQ",
                  style: GoogleFonts.questrial(color: Colors.grey,
                  fontSize: 20.0),
                ),
                SizedBox(
                  width: 50,
                ),
                MaterialButton(
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  onPressed: (){
                    LoginPage();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                  child: Text(
                    "Connexion",
                    style: GoogleFonts.questrial(color: Colors.white,fontSize: 20.0),
                  ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
           children: <Widget>[
              Text(
                "Pick UP Courses",
                style: GoogleFonts.questrial(
                    fontWeight: FontWeight.bold, color: Colors.blue[900], fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Accueil",
                      style: GoogleFonts.questrial(color: Colors.grey,
                      fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Tarification",
                      style: GoogleFonts.questrial(color: Colors.grey,
                      fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "FAQ",
                      style: GoogleFonts.questrial(color: Colors.grey,
                      fontSize: 20.0),
                    ),
                  ],
                ),
              )
            ], 
        ),
      ),
    );
  }
}