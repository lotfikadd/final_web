import 'package:final_web/loginpage/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pagechildren(double width){
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Imprimez votre cours facilement",
              style: GoogleFonts.questrial(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              color: Colors.grey[700],
            ),),

            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                "Le meilleur endroit où vous pouvez suivre les cours de votre professeur professionnellement et facilement, sans perdre de temps. Entrez simplement et choisissez votre professeur et votre classe pour imprimer vos coure",
                style: GoogleFonts.questrial(
                fontSize: 20.0,color: Colors.grey),
              ),
            ),
             MaterialButton(
                  color: Colors.blue[900],
                    splashColor: Colors.blue[200],
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  onPressed: (){
                    LoginPage();
                    // Navigator.of(context).pushNamed('/logingpage');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                      child: Text(
                        "S'inscrire",
                      style: GoogleFonts.questrial(
                      color: Colors.white,
                      fontSize: 25.0
                      ),
                    ),
                  ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: MaterialButton(
                    color: Colors.blue[900],
                    splashColor: Colors.blue[200],
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                        onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                      child: Icon(Icons.ondemand_video,size: 25.0,color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),

        Padding(
           padding: const EdgeInsets.symmetric(vertical: 5.0),
           child: Image.asset("assets/images/imag1.png",
           width: width,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
        return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pagechildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pagechildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}


