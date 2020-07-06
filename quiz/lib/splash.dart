import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Q-IZ",
          style: GoogleFonts.anton(
            textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 10,fontSize: 90,fontWeight: FontWeight.w300),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}