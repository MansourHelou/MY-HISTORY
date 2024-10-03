import 'package:flutter/material.dart';
import 'package:sample/English/engvisual.dart';
import 'package:sample/How to deal/howVisual.dart';
import 'package:sample/pre-recognize/preVisual.dart';
import 'package:sample/Gaming/gVisual.dart';
 class Visual extends StatefulWidget {
   const Visual({super.key});

   @override
   State<Visual> createState() => _VisualState();
 }

 class _VisualState extends State<Visual> {
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
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => engVisual()));
               },child: Padding(
                 padding: const EdgeInsets.only(right: 50,left: 50,top: 20,bottom: 20),
                 child: Text("Definition for Visual impairment ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
               )),
               SizedBox(height: 20),


               ElevatedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => HowVisual()));
               },child: Padding(
                 padding: const EdgeInsets.only(right: 100,left: 100,top: 20,bottom: 20),
                 child: Text("How to deal with it",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
               )),
               SizedBox(height: 20),

               ElevatedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreVisual()));
               },child: Padding(
                 padding: const EdgeInsets.only(right: 50,left: 50,top: 20,bottom: 20),
                 child: Text("How to pre-recognize the signs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
               )),
               SizedBox(height: 20),

               ElevatedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => gVisual()));
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
