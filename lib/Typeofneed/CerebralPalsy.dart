import 'package:flutter/material.dart';
import 'package:sample/English/engpalsy.dart';
import 'package:sample/How to deal/howCerebral.dart';
import 'package:sample/pre-recognize/preCerebralPalsy.dart';
import 'package:sample/Gaming/gCerebral.dart';

class CerebralPalsy extends StatefulWidget {
  const CerebralPalsy({super.key});

  @override
  State<CerebralPalsy> createState() => _CerebralPalsyState();
}

class _CerebralPalsyState extends State<CerebralPalsy> {
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => engPalsy()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 60,left: 60,top: 20,bottom: 20),
                child: Text("Definition for Cerebral Palsy ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),


              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowPalsy()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
                child: Text("How to deal with it",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreCerebral()));
              },child: Padding(
                padding: const EdgeInsets.only(right: 50,left: 50,top: 20,bottom: 20),
                child: Text("How to pre-recognize the signs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              )),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => gCerebral()));
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
