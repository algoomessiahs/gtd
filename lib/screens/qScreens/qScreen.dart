import 'package:flutter/material.dart';



import '../widgets/taskCont.dart';
import 'package:gtd/consts/colors.dart';
import 'package:gtd/shared/bottom_bar.dart';


class QScreen extends StatelessWidget {
  
  final String text;

  QScreen(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GTDBottomBar(0),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              //Top
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, size: 20,),
                      color: Color(0xff7E684C),
                      ),
                    Text(
                      "What is it ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff4E3910),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                      ),
                      Container(),
                  ],
                ),
              //
              SizedBox(height: 30,),
              TaskCont(),
              //
              SizedBox(height: 50,),
              //Bottom
              Text(
                text,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                FloatingActionButton(
        elevation: 4,
        backgroundColor: Colors.white,
        onPressed: () {},
        tooltip: "HELP",
        child: Icon(Icons.question_mark, color: Color(0xff9E917A),),
      ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    thebtn("No", () {} ),
                    thebtn("Yes", () {} ),
                  ],
                ),
                  ],
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}



Widget thebtn(String text, Function? onP) {
  return RaisedButton(
    color: Colors.white,
    child: Container(
      height: 50,
      width: 131,
      child: Center(
        child: Text(
        text,
        style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xff4E3910),
        fontSize: 32,
        ),
      ),
      ),
    ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        onPressed: () {
          onP;
        },
        );
}
