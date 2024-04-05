import 'package:flutter/material.dart';
import 'widgets/boxCont.dart';
import 'widgets/topBar.dart';


import 'package:gtd/consts/colors.dart';
import 'package:gtd/shared/bottom_bar.dart';



Color dc = Color(0xff7E684C);


class Box extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        bottomNavigationBar: GTDBottomBar(1),
    
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // TOP
              TopBar("Box", Icons.folder_open),
              //
    
              //middle
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                BoxCont(Icons.rocket_launch, "Do it !!!", 30),
                BoxCont(Icons.next_plan, "Next Actions", 8),
                BoxCont(Icons.calendar_today, "Calender", 30),
                BoxCont(Icons.group, "Waiting", 30),
                BoxCont(Icons.calendar_view_day, "Project List", 30),
                BoxCont(Icons.folder, "Reference", 30),
                BoxCont(Icons.pie_chart_rounded, "Someday / Maybe", 30),
                BoxCont(Icons.delete, "Trash", 30),
                BoxCont(Icons.restore_from_trash, "Restore", 80),
                      ],
                    ),
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
