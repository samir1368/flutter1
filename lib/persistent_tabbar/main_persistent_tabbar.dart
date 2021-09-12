import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/persistent_tabbar/page1.dart';
import 'package:flutter_app1/persistent_tabbar/page2.dart';

class MainPersistentTabBar extends StatelessWidget {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar:menu(),

        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Text('Page 3'),
            Text('Page 3')
          ],
        ),
      ),
    );
  }
  Widget menu() {
    Color selection =new Color(0xF11162D);
    return Container(
      color: selection,
      child:
    /*  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'sami',
          ),
        ],

        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.red[500]

      ),*/
   TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: null,
        tabs: [
          Tab(
            text: "",
            icon: Icon(Icons.euro_symbol),
          ),
          Tab(
            text: "",
            icon: Icon(Icons.assignment),
          ),
          Tab(
            text: "",
            icon: Icon(Icons.account_balance_wallet),
          ),
          Tab(
            text: "",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

}



