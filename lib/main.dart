

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app1/persistent_tabbar/main_persistent_tabbar.dart';


void main() => runApp(OrginalApp());
Color selection = Colors.blue[900]!;
class OrginalApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,

    theme: ThemeData(
      // Define the default brightness and colors.
      scaffoldBackgroundColor: selection,
      primaryColor:selection,
      accentColor: selection,

      // Define the default font family.
      fontFamily: 'Georgia',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    ),

    home: MyApp(),
  );
  }

}
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  onButtonTap(Widget page)  {
    Navigator.push(this.context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      body:
      InkWell(
        child:new Center(
          child:
          MyMenuButton(
            title: "ورود",
            actionTap: () {
              onButtonTap(
                MainPersistentTabBar(),
              );
            },
          ),
          //tapableText('Hello', () { print('I have been tapped :)'); }),
       // ),
       /* Ink(height: double.infinity, width: double.infinity, color: selection),
        new Text("Hello, World!"),*/

      )
      )
    );
  /*  return new Container(
        body:
        InkWell(
          onTap: () {}, // Handle your callback
          child:
          Ink(height: double.infinity, width: double.infinity, color: selection),


        )
    *//*  decoration: new BoxDecoration(color: selection),
      child: new Center(
        child: new Text("سلام بزن روش!"),
    Ink(height: double.infinity, width: double.infinity, color: selection),
      ),*//*
    );*/
  }
}


class MyMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback actionTap;
  MyMenuButton({required this.title, required this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        height: 60,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: new Text(title),
        onPressed: actionTap,
      ),
    );
  }
}
