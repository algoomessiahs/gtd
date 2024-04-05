import 'package:flutter/material.dart';



class AddBottomSheet extends StatefulWidget {

  @override
  _AddBottomSheetState createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
      height: 165,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 165,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                DecoratedTextField(),
                SheetButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DecoratedTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: TextField(
        maxLines: 4,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}




class SheetButton extends StatefulWidget {

  _SheetButtonState createState() => _SheetButtonState();
}

class _SheetButtonState extends State<SheetButton> {
  bool checkingFlight = false;
  bool success = false;

  @override
  Widget build(BuildContext context) {
    return !checkingFlight
        ? InkWell(
          onTap: () async {
              setState(() {
               checkingFlight = true; 
              });
              await Future.delayed(Duration(seconds:1));
              setState(() {
               success = true; 
              });
              await Future.delayed(Duration(milliseconds: 500));
              Navigator.pop(context);
            },

            child: Container(
              height: 44,
              width: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xffDF2523),
              ),
              child: Icon(Icons.send, color: Colors.white, size: 16,),
            ),
        )

        // MaterialButton(
        //     color: Colors.grey[800],
        //     onPressed: () async {
        //       setState(() {
        //        checkingFlight = true; 
        //       });

        //       await Future.delayed(Duration(seconds:1));

        //       setState(() {
        //        success = true; 
        //       });

        //       await Future.delayed(Duration(milliseconds: 500));

        //       Navigator.pop(context);
        //     },
        //     child: Text(
        //       'Check Flight',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   )


        : !success
            ? CircularProgressIndicator(color: Color(0xff7E684C), strokeWidth: 3,)
            : Icon(
                Icons.check,
                color: Colors.green,
              );
  }
}
