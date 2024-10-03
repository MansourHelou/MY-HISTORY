import 'package:flutter/material.dart';
import 'package:sample/English/englishautism.dart';
import 'package:sample/How to deal/howautism.dart';
import 'package:sample/pre-recognize/preAutism.dart';
import 'package:sample/Gaming/gAutism.dart';

class Autism extends StatefulWidget {
  const Autism({super.key});

  @override
  State<Autism> createState() => _AutismState();
}

class _AutismState extends State<Autism> {
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => engautism()));
          },child: Padding(
            padding: const EdgeInsets.only(right: 90,left: 90,top: 20,bottom: 20),
            child: Text("Definition for Autism ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          )),
          SizedBox(height: 20),


          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowAutism()));
          },child: Padding(
            padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
            child: Text("How to deal with it",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
          )),
          SizedBox(height: 20),

          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreAutism()));
          },child: Padding(
            padding: const EdgeInsets.only(right: 50,left: 50,top: 20,bottom: 20),
            child: Text("How to pre-recognize the signs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          )),
          SizedBox(height: 20),

          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => gAutism()));
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
