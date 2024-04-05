import 'package:flutter/material.dart';


import 'package:gtd/consts/colors.dart';
import 'inbox.dart';

const Color dc = Color(0xff4E3910);

class FirstFree extends StatefulWidget {
  @override
  State<FirstFree> createState() => _FirstFreeState();
}

class _FirstFreeState extends State<FirstFree> {
  bool? checkBox = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  // Top
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/cat.png"),
                        width: 330,
                        height: 330,
                      ),
                      Text(
                        "THE GTD",
                        style: TextStyle(
                          fontSize: 50,
                          color: dc,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "For Your Task Management",
                        style: TextStyle(
                          fontSize: 20,
                          color: dc,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  //
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  // Right Cont
                  Container(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terms of use",
                          style: TextStyle(
                            color: dc,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Privacy policy",
                          style: TextStyle(
                            color: dc,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
    
    // Bottom Cont
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 160,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  value: checkBox,
                                  onChanged: (value) {
                                    setState(() {
                                      checkBox = value;
                                    });
                                  }),
                              SizedBox(width: 10),
                              Text(
                                "I agree to the Terms of Use",
                                style: TextStyle(
                                  color: dc,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          //
    
                          //Buttom
                          checkBox == true
                              ? RaisedButton(
                                  color: Color(0xffDF2523),
                                  child: Container(
                                    height: 60,
                                    width: 125,
                                    child: Center(
                                      child: Text(
                                        "Start",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Inbox()));
                                  },
                                )
                              : Container(
                                  height: 60,
                                  width: 125,
                                  child: Center(
                                    child: Text(
                                      "Start",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                          //
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
