import 'package:flutter/material.dart';
import 'package:sample/translate/arabicIntellectual.dart';
class engIntellectul extends StatefulWidget {
  const engIntellectul({super.key});

  @override
  State<engIntellectul> createState() => _engIntellectulState();
}

class _engIntellectulState extends State<engIntellectul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intellectual disability',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text(" Intellectual disability involves limitations in intellectual functioning and adaptive behaviors, which affect everyday social and practical skills. It typically manifests before age 18 and can vary in severity, from mild to profound. Causes of intellectual disability may include genetic conditions, prenatal exposure to toxins, or perinatal complications. Individuals with intellectual disability may require ongoing support and services, including specialized education, vocational training, and community-based programs. With appropriate interventions and accommodations, many people with intellectual disability can lead meaningful lives and contribute to their communities.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicIntellectual()));
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


