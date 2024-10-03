import 'package:flutter/material.dart';
import 'package:sample/translate/arabiclanguage.dart';
class engLanguage extends StatefulWidget {
  const engLanguage({super.key});

  @override
  State<engLanguage> createState() => _engLanguageState();
}

class _engLanguageState extends State<engLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language impairment',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 810,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Language impairment refers to difficulties in communication that may affect speech production, language comprehension, or social interaction. These impairments may result from various causes, including developmental delays, neurological conditions, hearing loss, or trauma. Speech impairments may involve articulation disorders, fluency disorders (such as stuttering), or voice disorders (such as hoarseness). Language impairments may manifest as difficulties in understanding and using words, sentences, or social communication skills. Treatment for speech or language impairment may include speech therapy, augmentative and alternative communication (AAC) devices, and interventions to improve language development and social communication skills. Early intervention and ongoing support are crucial for minimizing the impact of speech or language impairment on academic, social, and vocational success.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabiclanguage()));
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


