import 'package:flutter/material.dart';


import 'package:gtd/consts/bottom_sheets.dart';
import 'package:gtd/screens/qScreens/q1.dart';


const Color dc = Color(0xff7E684C);
const Color mdc = Color(0xff4E3910);
const double defsize = 10;

class SettCont extends StatelessWidget {

  final IconData icon;
  final String text;
  
  SettCont(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Q1()));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        
        height: 65,
        width: MediaQuery.of(context).size.width * 0.98,
        child: Column(
          children: [
            //Top

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //left
                  Icon(icon, color: mdc, size: 30,),
                  Text(
                text,
                style: TextStyle(
                  color: mdc,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  wordSpacing: 6,
                  )
                ),
                Container(),

                  //
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
