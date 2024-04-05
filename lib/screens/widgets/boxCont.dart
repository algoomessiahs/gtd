import 'package:flutter/material.dart';


import 'package:gtd/consts/bottom_sheets.dart';
import 'package:gtd/screens/qScreens/q1.dart';


const Color dc = Color(0xff7E684C);
const Color mdc = Color(0xff4E3910);
const double defsize = 10;

class BoxCont extends StatelessWidget {

  final IconData icon;
  final String text;
  final int num;
  
  BoxCont(this.icon, this.text, this.num);

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //left
                  Container(
                    child: Row(
                      children: [
                  Icon(icon, color: mdc, size: 30,),
                  SizedBox(width: 15),
                  Text(
                text,
                style: TextStyle(
                  color: mdc,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  wordSpacing: 6,
                  )
                ),
                      ],
                    ),
                  ),
                  //

                  //right
                  Container(
                      decoration: const BoxDecoration(
                        color: mdc,
                        shape: BoxShape.circle,
                                  boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 2.0,
                offset: Offset(0, 0.75)
            )
          ],
                      ),
                        height: 35,
                        width: 35,
                        child: Center(
                          child: Text(
                          num.toString(),
                          style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                          ),
                        ),
                        ),
                      ),
                ],
              ),
            ),

            //
            // I don't think u even need this
            // Bottom
            // Container(
            //   padding: EdgeInsets.only(left: 10),
            //   child: Row(
            //     children: [
            //     Row(
            //             children: [
            //               Icon(Icons.lock_clock, size: defsize, color: dc),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               Text("1 hr", style: TextStyle(fontSize: defsize, color: dc)),
            //             ],
            //           ),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Row(
            //             children: [
            //               Icon(Icons.calendar_today, size: defsize, color: dc),
            //               SizedBox(
            //                 width: 5,
            //               ),
            //               Text("2022/6/08 12:32", style: TextStyle(fontSize: defsize, color: dc)),
            //             ],
            //           ),
            //   ]),
            // ),

            //

          ],
        ),
      ),
    );
  }
}
