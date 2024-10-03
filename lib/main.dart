import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'splash_screen.dart';

late SharedPreferences sharedPreferences;
void main() async{
WidgetsFlutterBinding.ensureInitialized();
sharedPreferences=await SharedPreferences.getInstance();
try{
await Firebase.initializeApp(
  options: const FirebaseOptions(apiKey: "AIzaSyCsGYOyGqkAE3IynFBDfZR2gHXPtLdg4tU", appId: "1:17463222355:android:f80d3c79dbb1c70c8f66a6", projectId: "senior-project-16892",messagingSenderId:"17463222355" )
);
}catch(e){
  if(kDebugMode){
    print(e);
  }
}
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}
