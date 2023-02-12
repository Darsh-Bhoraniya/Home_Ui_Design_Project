import 'package:flutter/material.dart';
import 'package:home_ui_design/card.dart';

import 'Widgets/my_card.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

int selectedindex = 0;

class _SecondScreenState extends State<SecondScreen> {
  List<Map> users = [];

  List<Widget> widgetsList = [
    CardCreate(),
    const Center(
      child: Text('No Data Found'),
    ),
    const Center(
      child: Text('No Data Found'),
    ),
    const Center(
      child: Text('No Data Found'),
    ),
    const Center(
      child: Text('No Data Found'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            child: TextFormField(
              decoration: (const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Type any thing for Search"
              )
              ),
            ),
          ),
          Expanded(child: widgetsList[selectedindex]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.near_me),
              label: "Near Me",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze_sharp),
            label: "Disscover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: "Schedule",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.saved_search_outlined), label: "More"),
        ],
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.black,
        currentIndex: selectedindex,
        onTap: (index) {
          setState(
            () {
              selectedindex = index;
            },
          );
        },
      ),
    );
  }
}
