import 'package:flutter/material.dart';
import 'package:sample/translate/arabicautism.dart';

class engautism extends StatefulWidget {
  const engautism({super.key});

  @override
  State<engautism> createState() => _engautismState();
}

class _engautismState extends State<engautism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autism Spectrum Disorders (ASD)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 650,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(" Autism Spectrum Disorders (ASD) are complex neurodevelopmental conditions characterized by challenges in social interaction, communication difficulties, and repetitive behaviors. Individuals with ASD may struggle with understanding social cues, expressing themselves effectively, and may exhibit repetitive movements or rituals. ASD is a spectrum disorder, meaning it presents differently in each individual, ranging from mild to severe. Early diagnosis and intervention, along with tailored therapies, can significantly improve outcomes for individuals with ASD, helping them to develop vital skills and lead fulfilling lives within their capabilities. Supportive environments that accommodate their unique needs are crucial for their well-being and integration into society.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicautism()));
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

