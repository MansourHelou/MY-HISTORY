import 'package:flutter/material.dart';
import 'package:sample/translate/arabicADHD.dart';

class engADHD extends StatefulWidget {
  const engADHD({super.key});

  @override
  State<engADHD> createState() => _engADHDState();
}

class _engADHDState extends State<engADHD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADHD',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 600,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ADHD (Attention-Deficit/Hyperactivity Disorder): ADHD is a neurodevelopmental disorder characterized by difficulties with attention, hyperactivity, and impulsivity. Individuals with ADHD may struggle to focus, organize tasks, or control impulses, leading to challenges in academic, work, or social settings. ADHD often persists into adulthood, impacting various aspects of daily life. Treatment typically involves a combination of medication, therapy, and behavioral interventions tailored to individual needs. With proper support and strategies, individuals with ADHD can learn to manage their symptoms effectively and thrive in their personal and professional endeavors.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicADHD()));
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


