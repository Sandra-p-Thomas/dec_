import 'dart:async';
import '../log_in/log_in_page.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                AuthPage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children:[ Column(
          children:[
            Container(
              width: 250,
              height: 250,
              padding: EdgeInsets.all(25),
            color: Colors.white,),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image:AssetImage('assets/images/appstore.png'))
              ),
            ),
            // Container(
            //   alignment: Alignment.bottomRight,
            //   padding:EdgeInsets.all(5),
            //   child:
            // LinearProgressIndicator(
            //   minHeight: 10,
            //   backgroundColor: Colors.black,
            //   color: Colors.white,
            // )
            // ),
        ]
        ),
      ]),
    );
  }
}
