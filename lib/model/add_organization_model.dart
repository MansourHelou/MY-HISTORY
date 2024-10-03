import 'package:cloud_firestore/cloud_firestore.dart';

class AddOrganizationModel {
  String organizationId = '';
  String organizationName = '';
  String typeNeed = '';
  String email = '';
  String address = '';
  String phoneNumber = '';

  AddOrganizationModel({
    this.organizationName = '',
    this.organizationId = '',
    this.phoneNumber = '',
    this.email = '',
    this.typeNeed = '',
    this.address = '',
  });

  Map<String, dynamic> toJson() => {
        'organization_id': organizationId,
        'name_concerned': organizationName,
        'phone_number': phoneNumber,
        'email': email,
        'address': address,
        'type_need': typeNeed,
      };

  static AddOrganizationModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return AddOrganizationModel(
      organizationId: snapshot['organization_id'] ?? '',
      organizationName: snapshot["name_concerned"] ?? '',
      phoneNumber: snapshot["phone_number"] ?? '',
      email: snapshot["email"] ?? '',
      address: snapshot["address"] ?? '',
      typeNeed: snapshot["type_need"] ?? '',
    );
  }
}
