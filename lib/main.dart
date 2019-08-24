import 'package:akuwaimmo/screen/login.dart';
import 'package:flutter/material.dart';
import 'screen/listpostescreen.dart';
import 'screen/drawer.dart';
void main() {
  runApp(loginPage());
}


// void main() {
//   runApp(HomeScreen());
// }


// class MyApp extends StatelessWidget {
//   var drawerIcons = [
//     Icon(Icons.move_to_inbox),
//     Icon(Icons.inbox),
//     Icon(Icons.people),
//     Icon(Icons.local_offer),
//     Icon(Icons.star),
//     Icon(Icons.access_time),
//     Icon(Icons.label),
//     Icon(Icons.send),
//     Icon(Icons.send),
//     Icon(Icons.note),
//     Icon(Icons.mail),
//     Icon(Icons.error),
//     Icon(Icons.delete),
//     Icon(Icons.label),
//     Icon(Icons.label),
//     Icon(Icons.settings),
//     Icon(Icons.help),
//   ];

//   var drawerText = [
//     "All inboxes",
//     "Primary",
//     "Social",
//     "Promotions",
//     "Starred",
//     "Snoozed",
//     "Important",
//     "Sent",
//     "Outbox",
//     "Drafts",
//     "All mail",
//     "Spam",
//     "Bin",
//     "[Imap]/Sent",
//     "[Imap]/Trash",
//     "Settings",
//     "Help & feedback"
//   ];

//   final _tabs = <Widget>[
//     Tab(text: 'LES ANNONCES'),
//     Tab(text: 'TOP ANNONCE'),
//     Tab(text: 'MES PUB'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: DefaultTabController(
//           length: _tabs.length,
//           initialIndex: 1,
//           child: Scaffold(
//             drawer: myDrawer.getDrawer(),
//             appBar: AppBar(
//               title: new Text("Akuwa Immo"),
//               bottom: TabBar(tabs: _tabs),
//             ),
//             body: TabBarView(
//               children: <Widget>[
//                 MyHomePage(),
//                 Text('TOP ANNONCE'),
//                 Text('MES PUB'),
//               ],
//             ),
//             floatingActionButton: FloatingActionButton(
//               child: Icon(Icons.add),
//               onPressed: () {
//                 print('Clicked');
//               },
//             ),
//           )),
//     );
//   }
// }




