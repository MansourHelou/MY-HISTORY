import 'package:flutter/material.dart';
import 'package:sample/translate/arabicDown.dart';

class engDown extends StatefulWidget {
  const engDown({super.key});

  @override
  State<engDown> createState() => _engDownState();
}

class _engDownState extends State<engDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Down syndrome',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 550,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Down syndrome is a genetic disorder caused by the presence of an extra chromosome 21. It is associated with intellectual disabilities, distinct facial features, and certain health issues. Individuals with Down syndrome may have delays in physical and cognitive development, as well as unique strengths and challenges. Early intervention programs, educational support, and medical care can help individuals with Down syndrome reach their full potential and lead fulfilling lives. Inclusive communities and opportunities for social inclusion are essential for promoting their well-being and integration into society.",

                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicDown()));
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


