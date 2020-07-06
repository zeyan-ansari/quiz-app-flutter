import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/quizpage.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
    "images/linux.png",
  ];

  List<String> about = [
    "Flutter is an open-source UI software dev-kit created by Google.",
    "Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google",
    "React is an open-source JavaScript library for building user interfaces. It is maintained by Facebook",
    "Sass is a style sheet language initially designed by Hampton Catlin and developed by Natalie Weizenbaum.",
    "Firebase is a mobile and web application development platform developed by Firebase, Inc. in 2011, then acquired by Google in 2014.",
  ];

  Widget customcard(String langname, String image, String des){
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(

            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.black,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(margin: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 00.0,
                          ),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(100.0),
                            child: Container(
                              // changing from 200 to 150 as to look better
                              height: 80.0,
                              width: 80.0,
                              child: ClipOval(
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    image,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(margin: EdgeInsets.only(top: 10),
                          child: Text(
                            langname,
                            style: GoogleFonts.anton(
                              textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 3,fontSize: 20,fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(width: 200,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        des,
                        style: GoogleFonts.bellotaText(
                          textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 3,fontSize: 18,),
                        ),
                        maxLines: 5,
                        textAlign: TextAlign.left,
                      ),

                    ),

                  ],
                ),
                Container(width: 200,padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:20),decoration: BoxDecoration(border: Border.all(
                    width: 3.0, color: Color(0xff575757)
                )),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Container(
                      child: Text(
                        "CONTINUE ",
                        style: GoogleFonts.anton(
                          textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 3,fontSize: 20,),
                        ),
                      ),
                    ),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Color(0xff575757),


                      ),
                        child: Icon(Icons.chevron_right,size: 20,),)
                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(backgroundColor: Color(0xff575757),
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.black,
        title: Text(
          "Q-IZ",
          style: GoogleFonts.anton(
            textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 10,fontSize: 30,fontWeight: FontWeight.w300),
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Flutter", images[0], about[0]),
          customcard("Dart", images[1], about[1]),
          customcard("React", images[2], about[2]),
          customcard("Sass", images[3], about[3]),
          customcard("Firebase", images[4], about[4]),
        ],
      ),
    );
  }
}