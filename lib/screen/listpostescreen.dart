import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'postescreendetail.dart';

int itemCount;
List jsonResponse;
Future<List<String>> _getUsers() async {
  var data = await http
      .get("http://10.0.2.2:9090/swagger-ui.html/akuwa/poster/qosyx2");

  jsonResponse = json.decode(data.body);
  print(jsonResponse);
  return jsonResponse;
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView.builder(
              itemCount: jsonResponse.length,
              itemBuilder: (BuildContext context, i) {
                return new Container(
                  child: new InkWell(
                    onTap: (){
                      Navigator.push(context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                        return new postescreendetail(jsonResponse[i]);
                                      }));
                      // print(jsonResponse[i]);
                    },
                    child: Column(
                      children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                        
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: new CircleAvatar(
                            backgroundImage: new NetworkImage(
                                "http://10.0.2.2/jb/wp-content/uploads/2019/03/Adrien-Houngb%c7%b8dji-750x430-80x60.jpg"),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      (jsonResponse[i]["date"]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 17.0),
                                    ),
                                    Text(
                                      (jsonResponse[i]["date"]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.red,
                                          fontSize: 13.5),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          (jsonResponse[i]["date"]),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54,
                                              fontSize: 15.5),
                                        ),
                                        Text(
                                          (jsonResponse[i]["date"]),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54,
                                              fontSize: 15.5),
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.star_border, size: 25.0),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Row(
                                      children: <Widget>[
                                        Icon(Icons.place, size: 15.0),
                                        Text(
                                          (jsonResponse[i]["date"]),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black87,
                                              fontSize: 17.0),
                                        ),
                                      ],
                                    ),
                                    new Row(
                                      children: <Widget>[
                                        Icon(FontAwesomeIcons.moneyBill,
                                            size: 15.0),
                                        Text(
                                          (jsonResponse[i]["montant"]),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black87,
                                              fontSize: 17.0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

               
                  Divider(),
                ]
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  File loadData(String imagePath) {
    return File(imagePath);
  }
}
