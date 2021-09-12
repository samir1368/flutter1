import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app1/persistent_tabbar/page2.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Page1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Page1> {
  Color selection = new Color(0xF11162D);
  onButtonTap(Widget page)  {
    Navigator.push(this.context, MaterialPageRoute(builder: (BuildContext context) => page));
  }
  @override
  Widget build(BuildContext context) {
    /*  Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            */ /*1*/ /*
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                */ /*2*/ /*
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          */ /*3*/ /*
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
    return titleSection;*/
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: selection,
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              new Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/default_img.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: new Text("Samira Bagheri",
                          style: TextStyle(color: Colors.white)))
                ],
              ),
              new Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text("Recommendation",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))),
              new Container(
                height: 300.0, // constrain height
                child: ListViewHome(),
              ),
              new Row(
                children: [
                  new Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.only(top: 30),
                      child: Text("Specialty",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                  Spacer(),
                  new Row(
                    children: [
                      new Text("More",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      InkWell(onTap:() {
                        onButtonTap(
                          Page2(),
                        );
                      },      child: new Container(
                        margin: EdgeInsets.all(20),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ) ),

                    ],
                  )
                ],
              ),
              new Container(
                height: 150.0, // constrain height
                child: ListViewHomeSmall(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          color: Colors.green[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.purple[300],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.blue[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.amber[200],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.red[500],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.red[200],
          child: const Center(child: Text('Entry A')),
        )
      ],
    );
  }
}
class ListViewHomeSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 150,
          width: 150,
          color: Colors.green[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.purple[300],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.blue[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.amber[200],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.red[500],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.red[200],
          child: const Center(child: Text('Entry A')),
        )
      ],
    );
  }
}
