import 'package:flutter/material.dart';
import 'package:sample/translate/arabicBrain.dart';

class engBrain extends StatefulWidget {
  const engBrain({super.key});

  @override
  State<engBrain> createState() => _engBrainState();
}

class _engBrainState extends State<engBrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traumatic Brain Injury',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("Traumatic Brain Injury (TBI) refers to damage to the brain caused by an external force, such as a blow to the head or penetrating injury. TBI can result in various cognitive, physical, and emotional impairments, depending on the severity and location of the injury. Common symptoms include headaches, memory problems, and changes in mood or behavior. Treatment and rehabilitation for TBI may involve medical interventions, therapy, and support services to address functional deficits and promote recovery. Preventive measures, such as wearing helmets during sports and using seat belts in vehicles, can help reduce the risk of TBI.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicBrain()));
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

