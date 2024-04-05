import 'package:flutter/material.dart';



import 'package:gtd/consts/colors.dart';
import 'package:gtd/screens/widgets/settCont.dart';
import 'package:gtd/shared/bottom_bar.dart';


class Settings extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: GTDBottomBar(4),
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
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.settings, color: Color(0xff4E3910),),
                        SizedBox(width: 10),
                      Text(
                        "Settings",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff4E3910),
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                        ),
                            ],
                          ),
                        ),
                        Container(),
                    ],
                  ),
                  SizedBox(height: 30,),
                //
    
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                //Body pt 1
    
                SettCont(Icons.cloud, "BackUp"),
                SettCont(Icons.lock, "Password"),
                SettCont(Icons.language, "Language"),
                SettCont(Icons.dark_mode, "DarkMode"),
    
                //
    
                SizedBox(height: 30,),
                //Body pt 2
                Text(
                  "App Info",
                  style: TextStyle(
                    color: Color(0xff4E3910),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10,),
                SettCont(Icons.person, "Contact"),
                SettCont(Icons.policy, "Terms of Use"),
                SettCont(Icons.privacy_tip, "Privacy Policy"),
    
                //
                      ],
                    ),
                  ),
                ),
    
    
    
              ],
            ),
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
