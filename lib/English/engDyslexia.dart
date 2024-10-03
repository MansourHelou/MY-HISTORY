import 'package:flutter/material.dart';
import 'package:sample/translate/arabicDyslexia.dart';
class engDyslexia extends StatefulWidget {
  const engDyslexia({super.key});

  @override
  State<engDyslexia> createState() => _engDyslexiaState();
}

class _engDyslexiaState extends State<engDyslexia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dyslexia',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 770,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Dyslexia is a specific learning disorder characterized by difficulties with accurate and fluent word recognition and by poor spelling and decoding abilities. It is a neurological condition that affects the way the brain processes written and sometimes spoken language. Individuals with dyslexia may struggle with reading comprehension, spelling, and writing despite having average or above-average intelligence. Dyslexia is often associated with challenges in phonological processing, the ability to manipulate sounds in language. Early identification and intervention, such as specialized reading instruction and accommodations, can help individuals with dyslexia overcome challenges and succeed academically and professionally. Awareness and understanding of dyslexia are crucial for promoting early detection, support, and acceptance in educational and work settings.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicDyslexia()));
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

