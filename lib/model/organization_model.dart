import 'package:cloud_firestore/cloud_firestore.dart';

class OrganizationModel {
  String organizationId = '';
  String organizationName = '';
  String email = '';
  String password = '';


  OrganizationModel({
    this.organizationId = '',
    this.organizationName = '',
    this.email = '',
    this.password = '',


  });

  Map<String, dynamic> toJson() => {
    'organization_id': organizationId,
    'organization_name': organizationName,
    'email': email,
    'password': password,


  };

  static OrganizationModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return OrganizationModel(
      organizationId: snapshot['organization_id'] ?? '',
      organizationName: snapshot["organization_name"] ?? '',
      email: snapshot["email"] ?? '',
      password: snapshot["password"] ?? '',
    );
  }
}