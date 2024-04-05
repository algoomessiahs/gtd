import 'package:flutter/material.dart';
import 'package:gtd/screens/widgets/topBar.dart';


import 'package:gtd/consts/colors.dart';
import 'package:gtd/shared/bottom_bar.dart';
import 'widgets/taskCont.dart';
import 'package:gtd/consts/bottom_sheets.dart';




const items = ["Get Laid", "Fuckk", "Wake up", "Eat Health", "Hit GYM", "Flex", "Get Laid", "Repeat"];

class Inbox extends StatefulWidget {
  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffDF2523),
    
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
    
    
          tooltip: 'Add',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
    
    
        bottomNavigationBar: GTDBottomBar(0),
    
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // TOP
              TopBar("Inbox", Icons.inbox),
              //
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (ctx, i) {
                    final item = items[i];
                    return Dismissible(
                      direction: DismissDirection.endToStart,
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.delete_forever, color: Colors.white, size: 32)
                        ),
                      key: Key(item),
                      onDismissed: (direction) {
                              // Remove the item from the data source.
                              setState(() {
                              items.removeAt(i);
                              });
    
        // Then show a snackbar.
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('dismissed')));
                      },
                      child: TaskCont(),
                    );
                  },
                ),
    
                // SingleChildScrollView(
                //   scrollDirection: Axis.vertical,
                //   child: Column(
                //     children: [
                //       TaskCont(),
                //       TaskCont(),
                //       TaskCont(),
                //       TaskCont(),
                //       TaskCont(),
                //       TaskCont(),
                //       TaskCont(),
                //       TaskCont(),
                //       TaskCont(),
                //     ],
                //   ),
                // ),
    
              ),
            ],
          ),
        ),
      ),
    );
  }
}
