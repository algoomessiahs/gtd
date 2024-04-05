import 'package:flutter/material.dart';


import 'package:gtd/consts/bottom_sheets.dart';
import 'package:gtd/screens/qScreens/q1.dart';


const Color dc = Color(0xff7E684C);
const double defsize = 14;

class TaskCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Q1()));
      },
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder( // <-- SEE HERE
          borderRadius: BorderRadius.vertical( 
            top: Radius.circular(25.0),
          ),
        ),
          builder: (BuildContext context) {
            return showBottomSheett(context);
          }
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        height: 180,
        width: MediaQuery.of(context).size.width * 0.90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text",
                style: TextStyle(
                  color: Color(0xff323232),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 6,
                  )
                ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock_clock, size: defsize, color: dc),
                        SizedBox(
                          width: 5,
                        ),
                        Text("1 hr", style: TextStyle(fontSize: defsize, color: dc)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: defsize, color: dc),
                        SizedBox(
                          width: 5,
                        ),
                        Text("2022/6/08 12:32", style: TextStyle(fontSize: defsize, color: dc)),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit, size: defsize, color: dc),
                onPressed: () {
                          showModalBottomSheet(
            context: context,
          shape: const RoundedRectangleBorder( // <-- SEE HERE
          borderRadius: BorderRadius.vertical( 
            top: Radius.circular(25.0),
          ),
        ),
            builder: (builder){
              return AddBottomSheet();
            }
        );
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}









showBottomSheett(context) {

  const Color dcc = Color(0xff4E3910);
  const Color dividerC = Color(0xff707070);
  const TextStyle dts = TextStyle(
    color: dcc,
    fontSize: 25,
  );

  return Container(
    padding: EdgeInsets.all(30),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      InkWell(
        onTap: () {

        },
        child: Text("Move Box", style: dts,),
      ),
      Divider(color: dividerC,),

        InkWell(
        onTap: () {

        },
        child: Text("Copy", style: dts,),
      ),
      Divider(color: dividerC,),

        InkWell(
        onTap: () {

        },
        child: Text("Duplicate", style: dts,),
      ),
      Divider(color: dividerC,),

      InkWell(
        onTap: () {

        },
        child: Text("Delete", style: dts,),
      ),
      Divider(color: dividerC,),

      InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Text("Cancel", style: dts,),
      ),
      
    ],
  ),
);


}
