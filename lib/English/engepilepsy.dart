import 'package:flutter/material.dart';
import 'package:sample/translate/arabicEpilepsy.dart';

class engEpilepsy extends StatefulWidget {
  const engEpilepsy({super.key});

  @override
  State<engEpilepsy> createState() => _engEpilepsyState();
}

class _engEpilepsyState extends State<engEpilepsy> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Epilepsy',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 620,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Epilepsy is a neurological disorder characterized by recurrent seizures, which are sudden, uncontrolled electrical disturbances in the brain. Seizures can vary in type and severity, affecting consciousness, movement, or sensation. Epilepsy can have various causes, including genetic factors, brain injury, or medical conditions. While seizures can be disruptive and potentially life-threatening, many individuals with epilepsy can manage their condition with medication, lifestyle modifications, and, in some cases, surgery. Education, seizure management plans, and supportive communities are crucial for promoting safety and quality of life for individuals living with epilepsy.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicEpilepsy()));
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

