import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Page1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _Page1State extends State<Page1> {
  var list = [];

  _loadList() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/"));
    if (response.statusCode == 200) {
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        setState(() {
          list = json.decode(response.body) as List;
        });
      }
    } else {
      throw Exception('Failed to load posts');
    }
  }

  @override
  void initState() {
    _loadList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              final data = list[index];
              return ListTile(
                contentPadding: EdgeInsets.all(10.0),
                title: Text(data['title']),
                subtitle: Text(
                  data['body'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

/* @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              final data = list[index];
              return ListTile(
                contentPadding: EdgeInsets.all(10.0),
                title: Text(data['title']),
                subtitle: Text(
                  data['body'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          ),
        ),
      ],
    );
  }*/
}

class _MyAppState extends State<Page1> {
  Color selection = new Color(0xF11162D);

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
      home: new Scaffold(
        body: new Container(

          child: new Column(

            children: [

             Expanded(
                  child: new Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('image/default_img.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  new Text("Samira Bagheri"),
                ],
              )),
            //  new Text("Title List"),
              new Text("Samira Bagheri" , style: TextStyle(
                color: Colors.grey[500],)),
              SizedBox(
                height: 250, // constrain height
                child: ListViewHome(),
              ),
           //   Expanded(child: ListViewHome()),

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

        ListTile( title: Text("Battery Full"), leading: Icon(Icons.battery_full)),
        ListTile( title: Text("Battery Full"), leading: Icon(Icons.battery_full)),
        ListTile( title: Text("Battery Full"), leading: Icon(Icons.battery_full)),
        ListTile( title: Text("Battery Full"), leading: Icon(Icons.battery_full)),
        ListTile( title: Text("Battery Full"), leading: Icon(Icons.battery_full)),
        ListTile( title: Text("Battery Full"), leading: Icon(Icons.battery_full)),
        ListTile( title: Text("Battery Full"), leading: Icon(Icons.battery_full))

      ],
    );
  }
}
