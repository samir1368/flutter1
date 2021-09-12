import 'package:flutter/material.dart';
import 'package:flutter_app1/persistent_tabbar/page1.dart';
import 'package:flutter_app1/persistent_tabbar/page2.dart';

class MainPersistentTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: menu(),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Text('Page 3'),
            Text('Page 4'),
          ],
        ),
      ),
    );
  }



  Widget menu() {
    Color selection =new Color(0xF11162D);
    return Container(
      color: selection,
      child: TabBar(
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
