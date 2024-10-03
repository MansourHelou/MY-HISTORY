import 'package:cloud_firestore/cloud_firestore.dart';

class AddParentModel {
  String parentId = '';
  String nameConcerned = '';
  String gender = '';
  String email = '';
  String details = '';
  String typeNeed = '';
  String address = '';
  String phoneNumber = '';
  String addressDetails = '';

  AddParentModel({
    this.parentId = '',
    this.nameConcerned = '',
    this.gender = '',
    this.email = '',
    this.details = '',
    this.typeNeed='',
    this.address = '',
this.phoneNumber='',
    this.addressDetails='',

  });

  Map<String, dynamic> toJson() => {
    'parent_id': parentId,
    'name_concerned': nameConcerned,
    'gender': gender,
    'email': email,
    'details': details,
    'type_need': typeNeed,
    'address': address,
    'address_details': addressDetails,
    'phone_number':phoneNumber,


  };

  static AddParentModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return AddParentModel(
      parentId: snapshot['parent_id'] ?? '',
      nameConcerned: snapshot["name_concerned"] ?? '',
      gender: snapshot["last_name"] ?? '',
      email: snapshot["email"] ?? '',
      details: snapshot["details"] ?? '',
      address: snapshot["address"] ?? '',
      phoneNumber: snapshot["phone_number"] ?? '',
      typeNeed: snapshot["type_need"] ?? '',
      addressDetails: snapshot["address_details"] ?? '',

    );
  }
}