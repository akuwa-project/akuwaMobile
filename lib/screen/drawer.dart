import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class myDrawer {

  static Drawer getDrawer() {
    var drawerIcons = [
      Icon(Icons.move_to_inbox),
      Icon(Icons.inbox),
      Icon(Icons.people),
      Icon(Icons.local_offer),
      Icon(Icons.star),
      Icon(Icons.access_time),
      Icon(Icons.label),
      Icon(Icons.send),
      Icon(Icons.send),
      Icon(Icons.note),
      Icon(Icons.mail),
      Icon(Icons.error),
      Icon(Icons.delete),
      Icon(Icons.label),
      Icon(Icons.label),
      Icon(Icons.settings),
      Icon(Icons.help),
    ];

    var drawerText = [
      "All inboxes",
      "Primary",
      "Social",
      "Promotions",
      "Starred",
      "Snoozed",
      "Important",
      "Sent",
      "Outbox",
      "Drafts",
      "All mail",
      "Spam",
      "Bin",
      "[Imap]/Sent",
      "[Imap]/Trash",
      "Settings",
      "Help & feedback"
    ];


    Text email = new Text(
      "tinnigupta1998@gmail.com",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
    );

    Text name = new Text(
      "Tinni Gupta",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
    );

    return Drawer(

        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: name,
              accountEmail: email,
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                  padding: EdgeInsets.only(top:0.0),
                  itemCount: drawerText.length,
                  itemBuilder: (context, position) {
                    return ListTile(
                      leading: drawerIcons[position],
                      title: Text(drawerText[position],
                          style: TextStyle(fontSize: 15.0)),
                    );
                  }),
            )
          ],
        ));
  }



}
