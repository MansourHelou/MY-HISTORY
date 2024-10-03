import 'package:cloud_firestore/cloud_firestore.dart';

class HelpOrganizationModel {
  String id = '';
  String name = '';
  String description = '';
  String number = '';


  HelpOrganizationModel({
    this.id = '',
    this.name = '',
    this.description = '',
    this.number = '',


  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'number': number,


  };

  static HelpOrganizationModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return HelpOrganizationModel(
      id: snapshot['id'] ?? '',
      name: snapshot["name"] ?? '',
      description: snapshot["description"] ?? '',
      number: snapshot["number"] ?? '',
    );
  }
}