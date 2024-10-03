import 'package:flutter/material.dart';
import 'package:sample/English/engDevelopmental.dart';
import 'package:sample/Gaming/gDev.dart';
import 'package:sample/How to deal/howDevelopmental.dart';
import 'package:sample/pre-recognize/preDevelopmental.dart';
class Developmental extends StatefulWidget {
  const Developmental({super.key});

  @override
  State<Developmental> createState() => _DevelopmentalState();
}

class _DevelopmentalState extends State<Developmental> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,),
      backgroundColor: Colors.purple,
      body:  SingleChildScrollView(
        child:Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 150),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => engDev()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 20),
                child: Text("Definition for Developmental disability ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),


              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowDEV()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
                child: Text("How to deal with it",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreDev()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 50,left: 50,top: 20,bottom: 20),
                child: Text("How to pre-recognize the signs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => gDev()));
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
