import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String userId = '';
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';


  UserModel({
    this.userId = '',
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.password = '',


  });

  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'first_name': firstName,
    'last_name': lastName,
    'email': email,
    'password': password,


  };

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
      userId: snapshot['user_id'] ?? '',
      firstName: snapshot["first_name"] ?? '',
      lastName: snapshot["last_name"] ?? '',
      email: snapshot["email"] ?? '',
      password: snapshot["password"] ?? '',

    );
  }
}