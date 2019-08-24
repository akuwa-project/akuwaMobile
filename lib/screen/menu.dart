import 'package:flutter/material.dart';
import 'drawer.dart';
import 'listpostescreen.dart';
class MyApp extends StatelessWidget {
  final _tabs = <Widget>[
    Tab(text: 'LES ANNONCES'),
    Tab(text: 'TOP ANNONCE'),
    Tab(text: 'MES PUB'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
          length: _tabs.length,
          initialIndex: 1,
          child: Scaffold(
            drawer: myDrawer.getDrawer(),
            appBar: AppBar(
              title: new Text("Akuwa Immo"),
              bottom: TabBar(tabs: _tabs),
            ),
            body: TabBarView(
              children: <Widget>[
                MyHomePage(),
                Text('TOP ANNONCE'),
                Text('MES PUB'),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print('Clicked');
              },
            ),
          )),
    );
  }
}




