import 'package:flutter/material.dart';
import 'package:sample/English/engBlindness.dart';
import 'package:sample/How to deal/howBlindnes.dart';
import 'package:sample/pre-recognize/preBlindness.dart';
import 'package:sample/Gaming/gBlindness.dart';
class Blindness extends StatefulWidget {
  const Blindness({super.key});

  @override
  State<Blindness> createState() => _BlindnessState();
}

class _BlindnessState extends State<Blindness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,),
      backgroundColor: Colors.purple,
      body:  SingleChildScrollView(
        child:Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 150),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => engBlindness()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 80,left: 80,top: 20,bottom: 20),
                child: Text("Definition for Blindness ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),


              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowBlindness()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
                child: Text("How to deal with it",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreBlindness()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 50,left: 50,top: 20,bottom: 20),
                child: Text("How to pre-recognize the signs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => gBlindness()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 10,left: 10,top: 20,bottom: 20),
                child: Text("Maneuvers to manage : gaming approach",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),


            ],
          ),
        ),
      ),
    );

  }
}
