import 'package:flutter/material.dart';



Color dc = const Color(0xff7E684C);

class TopBar extends StatelessWidget {

  final String text;
  final IconData icon;
  TopBar(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: dc),
                      SizedBox(width: 10),
                      Text(text, style: TextStyle(color: dc, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey.withOpacity(0.8)),
                        SizedBox(width: 10),
                        Text("Search", style: TextStyle(color: Colors.grey.withOpacity(0.8)))
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}
