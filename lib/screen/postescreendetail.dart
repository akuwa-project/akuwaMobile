import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:akuwaimmo/modele/poste.dart';
// import 'package:zoomable_image/zoomable_image.dart';

class postescreendetail extends StatelessWidget {
  var myPosteJson;
  Poste poste;
  var user_name;
  var titre;
  var photo;
  var montant;
  var date;
  var adresse;
  var commentaire;
  var etatPoste;
  var information;
  var typeAnnonce;

  postescreendetail(PosteJson) {
    user_name = PosteJson['user_name'];
    titre = PosteJson['titre'];
    photo = PosteJson['photo'];
    montant = PosteJson['montant'];
    date = PosteJson['date'];
    adresse = PosteJson['adresse'];
    commentaire = PosteJson['commentaire'];
    etatPoste = PosteJson['etatPoste'];
    information = PosteJson['information'];
    typeAnnonce = PosteJson['typeAnnonce'];
    // poste = new  Poste(user_name,titre,photo,montant,date,adresse,commentaire,etatPoste,information,typeAnnonce);
    // // poste.adresse=
    print(photo);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Détail de l'article"),
      ),
      body: new SingleChildScrollView(
          child: new Column(
        children: <Widget>[
          new Card(
            elevation: 5,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          // child: new CircleAvatar(
                          //   backgroundImage: new NetworkImage(
                          //       "http://10.0.2.2/jb/wp-content/uploads/2019/03/Adrien-Houngb%c7%b8dji-750x430-80x60.jpg"),
                          // ),
                          ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  (titre),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                      fontSize: 20.0),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  (typeAnnonce),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                      fontSize: 20.0),
                                ),
                                Text(
                                  (etatPoste),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                      fontSize: 20.0),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    Icon(Icons.place, size: 15.0),
                                    Text(
                                      (adresse),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 20.0),
                                    ),
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                    Icon(FontAwesomeIcons.moneyBill,
                                        size: 15.0),
                                    Text(
                                      (montant),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 17.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  (commentaire),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                      fontSize: 25.0),
                                )
                              ],
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
          new Card(
            elevation: 10,
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              // height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: information.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '- ${information[0]}',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  );
                },
              ),
            ),
          ),
          new Card(
            elevation: 1,
            child: Container(
                width: MediaQuery.of(context).size.width - 20,
                // height: 150,
                child: new GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  // itemCount: information.length,
                  itemCount: 6,
                  //redefinir la taille de itemcount avec photo.lenght
                  itemBuilder: (context, index) {
                    return new Container(
                      margin: EdgeInsets.all(7.5),
                      child: new Card(
                          elevation: 1.0,
                          child: new Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: 150,
                            child: new InkWell(
                              onTap: () {
                                print(index);
                                // return new ZoomableImage(
                                //     new AssetImage('images/squirrel.jpg'),
                                //     placeholder: const Center(
                                //         child:
                                //             const CircularProgressIndicator()),
                                //     backgroundColor: Colors.red);
                              },
                              child: new Image.network(
                                  "https://codabee.com/wp-content/uploads/2018/03/cropped-Artboard-2.png"),
                              //replacer le lien des photos ici en haut photo[index]
                            ),
                          )),
                    );
                  },
                )),
          ),
          new Card(
            elevation: 1,
            child: new Container(
                child: new Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new MaterialButton(
                      height: 50.0,
                      minWidth: MediaQuery.of(context).size.width - 20,
                      // minWidth: double.infinity,
                      color: Colors.green,
                      splashColor: Colors.teal,
                      textColor: Colors.white,
                      child: new Text(
                        "Contactez l'annonceur",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            )),
          )
        ],
      )),
    );
  }

  Padding padding() {
    return new Padding(padding: EdgeInsets.only(top: 20.0));
  }

  Padding paddingspace() {
    return new Padding(padding: EdgeInsets.only(right: 200.0));
  }
}
