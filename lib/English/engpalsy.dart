import 'package:flutter/material.dart';
import 'package:sample/translate/arabicpalsy.dart';
class engPalsy extends StatefulWidget {
  const engPalsy({super.key});

  @override
  State<engPalsy> createState() => _engPalsyState();
}

class _engPalsyState extends State<engPalsy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cerebral Palsy (CP)',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 710,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Cerebral Palsy (CP) is a group of permanent movement disorders that appear in early childhood and affect posture, coordination, and muscle control. It results from damage to the developing brain, often occurring before, during, or shortly after birth. The severity and symptoms of CP vary widely among individuals, ranging from mild motor impairments to profound physical disabilities. Despite its challenges, individuals with CP can lead fulfilling lives with appropriate medical care, therapy, and assistive technologies. Early intervention programs play a crucial role in optimizing outcomes and empowering individuals with CP to achieve their full potential. Supportive communities and inclusive environments foster their participation and integration into society, promoting their well-being and dignity.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicpulsy()));
            },child: Padding(
              padding: const EdgeInsets.only(right: 90,left: 90,top: 10,bottom: 10),
              child: Text("Translate to arabic >>",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            )),
            SizedBox(height: 40),

          ],
        ),
      ),
    );
  }

}

