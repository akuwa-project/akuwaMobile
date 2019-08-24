  import 'dart:convert';
 
class Poste{

  String user_name;
  String titre;
  List<String>photo;
  String montant;
  String date;
  String adresse;
  String commentaire;
  String etatPoste;
  List<String>information;
  String typeAnnonce;

  Poste({this.user_name,this.titre,this.photo,this.montant,
      this.date,this.adresse,this.commentaire,this.etatPoste,this.information,this.typeAnnonce});

factory Poste.fromJson(json) => _posteFromJson(json);
  }


  Poste _posteFromJson(Map<String, dynamic> json) {
    return Poste(
          user_name: json['user_name'] as String,
          titre: json['titre'] as String,
          photo: json['titre'] as List,
          montant: json['montant'] as String,
          date: json['date'] as String,
          adresse: json['adresse'] as String,
          commentaire: json['commentaire'] as String,
          etatPoste: json['etatPoste'] as String,
          information: json['information'] as List,
          typeAnnonce: json['typeAnnonce'] as String,
    );
  }