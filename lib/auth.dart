import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample/main.dart';
import 'package:sample/organization.dart';
import 'package:sample/parent.dart';
import 'package:sample/splash_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({
    super.key,
  });

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // If connection state is waiting, return a loading indicator or some other widget
          return const CircularProgressIndicator();
        } else {
          if (snapshot.data == null) {
            // If user is not logged in, return the LoginScreen widget
            return const SplashScreen();
          } else {
            // If user is logged in, return the MyAccountScreen widget
            return sharedPreferences.getString("branch")=="parent"? const Parent():const Organization();
          }
        }
      },
    );
  }
}