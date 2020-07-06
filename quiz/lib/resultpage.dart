import 'package:flutter/material.dart';
import 'package:quiz/home.dart';
import 'package:google_fonts/google_fonts.dart';
class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key , @required this.marks}) : super(key : key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {

  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;

  @override
  void initState(){
    if(marks < 20){
      image = images[2];
      message = "You Should Try Hard..\n" + "You Scored $marks";
    }else if(marks < 35){
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $marks";
    }else{
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored $marks";
    }
    super.initState();
  }

  int marks;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,centerTitle: true,
        title: Text(
          "Result",style: GoogleFonts.anton(
          textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 10,fontSize: 30,fontWeight: FontWeight.w300),
        ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(margin: EdgeInsets.only(top: 20,bottom: 10),
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                      child: Center(
                      child: Text(
                        message,
                        style: GoogleFonts.bellotaText(
                          textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 3,fontSize: 20,),
                        ),
                      ),
                    )
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => homepage(),
                      ));
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          "CONTINUE  ",
                          style: GoogleFonts.anton(
                            textStyle: TextStyle(color: Color(0xff575757), letterSpacing: 3,fontSize: 20,),
                          ),
                        ),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                          color: Color(0xff575757),


                        ),
                          child: Icon(Icons.chevron_right,size: 20,),)
                      ],
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0,
                    ),
                    borderSide: BorderSide(
                        width: 3.0, color: Color(0xff575757)),
                    splashColor: Colors.white,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}