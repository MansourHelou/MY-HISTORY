import 'package:flutter/material.dart';
import 'package:sample/Typeofneed/Downsynd.dart';
import 'parent.dart';
import 'package:sample/Typeofneed/Autism.dart';
import 'package:sample/Typeofneed/Visualimpairment.dart';
import 'package:sample/Typeofneed/CerebralPalsy.dart';
import 'package:sample/Typeofneed/Blindness.dart';
import 'package:sample/Typeofneed/epilepsy.dart';
import 'package:sample/Typeofneed/adhd.dart';
import 'package:sample/Typeofneed/brain.dart';
import 'package:sample/Typeofneed/intellectual.dart';
import 'package:sample/Typeofneed/physical.dart';
import 'package:sample/Typeofneed/dyslexia.dart';
import 'package:sample/Typeofneed/developmental.dart';
import 'package:sample/Typeofneed/language.dart';
import 'package:sample/Typeofneed/deafness.dart';

 class Typeofneeds extends StatefulWidget {
   const Typeofneeds({super.key});
 
   @override
   State<Typeofneeds> createState() => _TypeofneedsState();
 }
 
 class _TypeofneedsState extends State<Typeofneeds> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.purple,
         body:  SingleChildScrollView(
         child:Center(
           child: Column(
           children: <Widget>[

             SizedBox(height: 80),
             Container(
               width: double.infinity,
               height: 50,
               color: Colors.purple,
               child: Center(
                 child: Text("Choose the type of Special Needs ",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),
                 ),
               ),
             ),
             SizedBox(height: 40),

                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Autism()));
                },child: Padding(
                  padding: const EdgeInsets.only(right: 120,left: 120,top: 10,bottom: 10),
                  child: Text("Autism >>",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => CerebralPalsy()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 90,left: 90,top: 10,bottom: 10),
               child: Text("Cerebral Palsy >>",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),


             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Visual()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 80,left: 80,top: 10,bottom: 10),
               child: Text("Visual impairment >>",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
             )),

             SizedBox(height: 20),
             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Blindness()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 110,left: 110,top: 10,bottom: 10),
               child: Text("Blindness >>",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
             )),

             SizedBox(height: 20),
             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Down()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 100,left: 100,top: 10,bottom: 10),
               child: Text("Down syndrome >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),


             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => ADHD()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 140,left: 140,top: 10,bottom: 10),
               child: Text("ADHD >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Epilepsy()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 130,left: 130,top: 10,bottom: 10),
               child: Text("Epilepsy >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Brain()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 70,left: 70,top: 10,bottom: 10),
               child: Text("Traumatisc brain injury >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Intellectual()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 80,left: 80,top: 10,bottom: 10),
               child: Text("Intellectual disability >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Physical()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 90,left: 90,top: 10,bottom: 10),
               child: Text("Physical disability >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dyslexia()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 130,left: 130,top: 10,bottom: 10),
               child: Text("Dyslexia >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Developmental()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 70,left: 70,top: 10,bottom: 10),
               child: Text("Developmental disability >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Language()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 80,left: 80,top: 10,bottom: 10),
               child: Text("language impairment >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),
             ElevatedButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => Deafness()));
             },child: Padding(
               padding: const EdgeInsets.only(right: 60,left: 60,top: 10,bottom: 10),
               child: Text(" Hearing loss or deafness >>",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
             )),
             SizedBox(height: 20),

           Row(
             children: [
               TextButton(
                 onPressed: () {
                   Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) => Parent()),
                   );
                 },
                 child: Padding(
                   padding: const EdgeInsets.only(left: 150),
                   child: Text(
                     "Go back",
                     style: TextStyle(
                       fontSize: 20,
                       color: Colors.white,
                       decoration: TextDecoration.underline,
                       decorationColor: Colors.white,),

                   ),
                 ),
               ),






             ],
                ),
         ],
         ),
         ),
         ),
     );
   }
 }
 