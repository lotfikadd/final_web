import 'package:final_web/commons/collapsing_navigation_drawer_widget.dart';
import 'package:final_web/landingpage/landingpage.dart';
import 'package:final_web/ui/login_page.dart';
import 'package:final_web/navbar/Navbar.dart';
import 'package:final_web/style/theme_dashboard.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pick Your Cours",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (context)=> MyHomePage(),
        '/logingpage': (context)=> LoginPage(),
        '/dashboard': (context)=> MyDashboard(),
      },
    
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
               NavBar(), Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                 child: LandingPage(),
               ),
             ],
           ),
         ),  
       ),
     );
  }
}

class MyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: drawerBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/imag3.png',
              fit: BoxFit.cover,
              height: 40.0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text('PickUpCourses'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.blue[100],),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}
