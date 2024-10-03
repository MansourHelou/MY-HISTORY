import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample/addOrganization.dart';
import 'package:sample/auth.dart';
import 'package:sample/main.dart';
import 'package:sample/model/add_organization_model.dart';
import 'package:sample/model/add_parent_model.dart';
import 'package:sample/model/help_organization_model.dart';
import 'package:sample/model/organization_model.dart';
import 'package:sample/model/user_model.dart';
import 'package:sample/organization.dart';
import 'package:sample/parent.dart';

class FunctionServices {
  UserModel userModel = UserModel();
  OrganizationModel organizationModel = OrganizationModel();

  List<HelpOrganizationModel> listHelpOrganization = [];

  List<AddOrganizationModel> listOrganization = [];
  List<AddParentModel> listParent = [];

  Future<bool> signIn({
    required BuildContext context,
    required String email,
    required String password,
    required int selectedOption,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (selectedOption == 1) {
        sharedPreferences.setString("branch", "parent");
      } else if(selectedOption==2){
        sharedPreferences.setString("branch", "organization");
      }
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const AuthScreen()),
          (route) => false);
      return true;
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: const Text(
          'An Error please check Email or Password',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      print(e);
      return false;
    }
  }

  Future<void> signUpParent({
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      if (password == confirmPassword) {
        UserCredential cred = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        await addParentDetails(
          firstName: firstName,
          lastName: lastName,
          email: email,
          password: password,
          userId: cred.user!.uid,
        );
        sharedPreferences.setString("branch", "parent");

        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Organization()),
        );
      } else {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: const Text(
            'Passwords do not match',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      sharedPreferences.setString("branch", "Parent");

      // ignore: use_build_context_synchronously
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: const Text(
          'An Error occurred during sign-up',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      print(e);
    }
  }

  Future<void> signUpOrganization({
    required BuildContext context,
    required String organizationName,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      if (password == confirmPassword) {
        UserCredential cred = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        await addOrganizationDetails(
          organizationName: organizationName,
          email: email,
          password: password,
          organizationId: cred.user!.uid,
        );
        sharedPreferences.setString("branch", "Organization");
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Organization()),
        );
      } else {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: const Text(
            'Passwords do not match',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

      // ignore: use_build_context_synchronously
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: const Text(
          'An Error occurred during sign-up',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      print(e);
    }
  }

//add new details for new user
  Future<void> addParentDetails({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userId,
  }) async {
    User currentUser = FirebaseAuth.instance.currentUser!;
    UserModel newUser = UserModel(
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    );
    await FirebaseFirestore.instance
        .collection('parent')
        .doc(currentUser.uid)
        .set(newUser.toJson());
  }

  //add new details for new user
  Future<void> addOrganizationDetails({
    required String organizationName,
    required String email,
    required String password,
    required String organizationId,
  }) async {
    User currentUser = FirebaseAuth.instance.currentUser!;
    organizationModel = OrganizationModel(
      organizationId: organizationId,
      organizationName: organizationName,
      email: email,
      password: password,
    );
    await FirebaseFirestore.instance
        .collection('organization')
        .doc(currentUser.uid)
        .set(organizationModel.toJson());
  }

  Future<UserModel> getParentInformation() async {
    try {
      User currentUser = FirebaseAuth.instance.currentUser!;
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("parent")
          .where("user_id", isEqualTo: currentUser.uid!)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot document = querySnapshot.docs.first;
        userModel = UserModel.fromSnap(document);

        return userModel;
      } else {
        print("No documents found");
        return UserModel();
      }
    } catch (e) {
      print(e);

      return UserModel();
    }
  }
  Future<OrganizationModel> getOrganizationInformation() async {
    try {
      User currentUser = FirebaseAuth.instance.currentUser!;
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("organization")
          .where("organization_id", isEqualTo: currentUser.uid!)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot document = querySnapshot.docs.first;
        organizationModel = OrganizationModel.fromSnap(document);

        return organizationModel;
      } else {
        print("No documents found");
        return OrganizationModel();
      }
    } catch (e) {
      print(e);

      return OrganizationModel();
    }
  }

  Future<void> editUserInfo({
    required String userId,
    required String firstName,
    required String lastName,

    required BuildContext context,
  }) async {
    try {
      await FirebaseFirestore.instance.collection("parent").doc(userId).update({
        "first_name": firstName,
        "last_name": lastName,

      }); final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Edit Success',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
    }
  }

  Future<void> editOrganizationInfo({
    required String organizationId,
    required String organizationName,

    required BuildContext context,
  }) async {
    try {
      await FirebaseFirestore.instance.collection("organization").doc(organizationId).update({
        "organization_name": organizationName,

      }); final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Edit Success',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
    }
  }


  Future<bool> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<HelpOrganizationModel>> getHelpOrganization() async {
    listHelpOrganization = [];
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("help_organization")
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        listHelpOrganization = querySnapshot.docs
            .map((e) => HelpOrganizationModel.fromSnap(e))
            .toList();

        return listHelpOrganization;
      } else {
        return listHelpOrganization;
      }
    } catch (e) {
      return listHelpOrganization;
    }
  }

  Future<List<AddOrganizationModel>> getOrganization() async {
    listOrganization = [];
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection("add_organization").get();
      if (querySnapshot.docs.isNotEmpty) {
        listOrganization = querySnapshot.docs
            .map((e) => AddOrganizationModel.fromSnap(e))
            .toList();

        return listOrganization;
      } else {
        return listOrganization;
      }
    } catch (e) {
      return listOrganization;
    }
  }

  Future<List<AddOrganizationModel>> getOrganizationByFilter(
      {required String typeNeed}) async {
    listOrganization = [];
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("add_organization")
          .where("type_need", isEqualTo: typeNeed)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        listOrganization = querySnapshot.docs
            .map((e) => AddOrganizationModel.fromSnap(e))
            .toList();

        return listOrganization;
      } else {
        return listOrganization;
      }
    } catch (e) {
      return listOrganization;
    }
  }

  Future<List<AddParentModel>> getParent() async {
    listParent = [];
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection("add_parent").get();
      if (querySnapshot.docs.isNotEmpty) {
        listParent =
            querySnapshot.docs.map((e) => AddParentModel.fromSnap(e)).toList();

        return listParent;
      } else {
        return listParent;
      }
    } catch (e) {
      return listParent;
    }
  }

  Future<List<AddParentModel>> getParentByFilter(
      {required String typeNeed}) async {
    listParent = [];
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("add_parent")
          .where("type_need", isEqualTo: typeNeed)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        listParent =
            querySnapshot.docs.map((e) => AddParentModel.fromSnap(e)).toList();

        return listParent;
      } else {
        return listParent;
      }
    } catch (e) {
      return listParent;
    }
  }

  Future<void> addOrganization({
    required BuildContext context,
    required String organizationName,
    required String typeNeed,
    required String email,
    required String address,
    required String phoneNumber,
  }) async {
    try {
      DocumentReference reference =
          FirebaseFirestore.instance.collection('add_organization').doc();

      await reference.set({
        'organization_id': reference.id,
        'name_concerned': organizationName,
        'phone_number': phoneNumber,
        'email': email,
        'address': address,
        'type_need': typeNeed,
      });
      final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Organization Added',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print("fail");
      print(e);
    }
  }

  Future<void> addParent({
    required BuildContext context,
    required String nameConcerned,
    required String gender,
    required String email,
    required String details,
    required String typeNeed,
    required String address,
    required String phoneNumber,
    required String addressDetails,
  }) async {
    try {
      DocumentReference reference =
          FirebaseFirestore.instance.collection('add_parent').doc();

      await reference.set({
        'parent_id': reference.id,
        'name_concerned': nameConcerned,
        'gender': gender,
        'email': email,
        'details': details,
        'type_need': typeNeed,
        'address': address,
        'address_details': addressDetails,
        'phone_number': phoneNumber,
      });
      final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Parent Added',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print("fail");
      print(e);
    }
  }
}
