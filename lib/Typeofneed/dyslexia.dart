import 'package:flutter/material.dart';
import 'package:sample/English/engDyslexia.dart';
import 'package:sample/Gaming/gDyslexia.dart';
import 'package:sample/How to deal/howDyslexia.dart';
import 'package:sample/pre-recognize/preDyslexia.dart';

class Dyslexia extends StatefulWidget {
  const Dyslexia({super.key});

  @override
  State<Dyslexia> createState() => _DyslexiaState();
}

class _DyslexiaState extends State<Dyslexia> {
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => engDyslexia()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 85,left: 85,top: 20,bottom: 20),
                child: Text("Definition for Dyslexia ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),


              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowDyslexia()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
                child: Text("How to deal with it",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreDyslexia()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 50,left: 50,top: 20,bottom: 20),
                child: Text("How to pre-recognize the signs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => gDyslexia()));
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

