import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

int itemCount;
List jsonResponse;
Future<List<String>> _getUsers() async {
  var data = await http.get(
      "http://10.0.2.2:9090/swagger-ui.html/akuwa/poster/qosyx2");

  jsonResponse = json.decode(data.body);
  print(jsonResponse);
  return jsonResponse;


}
Widget postListView() {

  return ListView.builder(
      itemCount: jsonResponse.length,
      itemBuilder: (BuildContext context,  i){
        var f=  _getUsers();
//        MailContent mailContent = MailGenerator.getMailContent(position);
        return Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 55.0,
                  color: Colors.red,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  color: Colors.black54,
                                  fontSize: 13.5),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                )
                              ],
                            ),
                            Icon(Icons.star_border, size: 25.0),
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
        ]);
      });
}
