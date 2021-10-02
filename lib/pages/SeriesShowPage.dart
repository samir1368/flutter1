import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/Autogenerated.dart';
import 'package:flutter_app1/pages/seriesModel.dart';
import 'package:flutter_app1/themes/color.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class SeriesShowPage extends StatefulWidget {
  const SeriesShowPage({Key? key}) : super(key: key);
  @override
  _SeriesShowPageState createState() => _SeriesShowPageState();
}

class _SeriesShowPageState extends State<SeriesShowPage> {
  var edt;
  final edtCon = new TextEditingController();
  late Autogenerated series ;
  bool isLoading = false;
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    this.fetchSeries();
  }
  void fetchSeries() async {
    setState(() {
      isLoading = true;
    });
    final seriDetail = ModalRoute.of(context)!.settings.arguments as seriesModel;

    var url = "http://37.156.145.212:1001/api/Series/"+seriDetail.id.toString();
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data'];
      print(items);

      setState(() {
       series = items.;
        isLoading = false;
      });
    } else {
      setState(() {
       series = [];
        isLoading = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final seriDetail = ModalRoute.of(context)!.settings.arguments as seriesModel;

    return Scaffold(
      appBar: AppBar(
        title: Text("Ravitoon"+seriDetail.title),
      ),
      body: Column(
        children: [
          Container(
            child:
            AppBar(
              title: Container(
                color: Colors.white,
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => null,
                ),
              ],
            ),
          ),
         // Expanded(child: Text(seriDetail.summary))
          Expanded(    // to mach parent vertically
            child: ListView.builder(
                itemCount: series.length,
                itemBuilder: (context, index) {
                  return getCard(
                    series[index],index
                  );
                }),
          )        ],
      ),
    );
  }
  Widget getCard(item ,index) {

    var title = item['title'];
    var summary = item['ad'];
    var imgUrl = item['thumbnail'];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          onTap: (){    // item click
            setState(() {
            //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SeriesShowPage(index)));

              /*  Fluttertoast.showToast(msg: item['title']
                  , toastLength: Toast.LENGTH_SHORT , gravity: ToastGravity.BOTTOM_LEFT);*/
            });
          },

          title: Row(
            children: <Widget>[
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(60 / 2),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            // "https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg"
                              "http://37.156.145.212:1001/"+imgUrl

                          )))),

              SizedBox(
                width: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title.toString(),
                    style: TextStyle(fontSize: 17),
                  ),

                  SizedBox(
                    height: 5,
                  ), // to vertical space between  textes

                  Text(
                    summary.toString(),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

}

