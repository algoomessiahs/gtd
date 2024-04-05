import 'package:flutter/material.dart';
import 'package:gtd/consts/bottom_sheets.dart';
import 'package:gtd/screens/box.dart';
import 'package:gtd/screens/inbox.dart';
import 'package:gtd/screens/settings.dart';


class GTDBottomBar extends StatelessWidget {


  final int indexx;
  GTDBottomBar(this.indexx);


    static const List<Widget> _widgetOptions = <Widget>[  
    Text('inbox', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Box', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Search', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Add', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Settings', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  




  @override
  Widget build(BuildContext context) {



  void _onItemTap(int index) {
    if(index == 0 && indexx != 0) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) => Inbox()));
    }
    else if(index == 1 && indexx != 1) {
     Navigator.push(context, MaterialPageRoute(builder: (ctx) => Box()));
    }
    else if (index == 3) {
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
      }
      else if (index == 4 && indexx != 4) {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => Settings()));
      }
  }

    return BottomNavigationBar(  
      type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: "inbox", 
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.folder_open),  
            label: 'Box',  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
            label: 'Search',  
          ), 
          BottomNavigationBarItem(  
            icon: Icon(Icons.add),  
            label: 'Add',  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.settings),  
            label: 'Settings', 
          ), 
        ],  
        currentIndex: indexx,  
        selectedItemColor: Color(0xff4E3910),
        unselectedItemColor: Color(0xff9E917A),
        backgroundColor: Colors.white,  
        onTap: _onItemTap,  
      );
  }
}