import 'package:flutter/material.dart';
import 'package:sample/translate/arabicPhysical.dart';

class engPhysical extends StatefulWidget {
  const engPhysical({super.key});

  @override
  State<engPhysical> createState() => _engPhysicalState();
}

class _engPhysicalState extends State<engPhysical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physical disability',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("Physical disability refers to any condition that affects a person's physical function, mobility, dexterity, or stamina, often resulting in limitations in movement or activities of daily living. Causes of physical disability may include congenital conditions, injuries, or progressive diseases. Assistive devices, such as wheelchairs, prosthetics, or mobility aids, can enhance independence and accessibility for individuals with physical disabilities. Accessible environments, inclusive design, and transportation options are essential for promoting the inclusion and participation of people with physical disabilities in society. Advocacy efforts and disability rights movements work to eliminate barriers and ensure equal opportunities for individuals with physical disabilities.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicPhysical()));
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


