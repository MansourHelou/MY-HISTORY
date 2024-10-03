import 'package:flutter/material.dart';

class PreLanguage extends StatefulWidget {
  const PreLanguage({super.key});

  @override
  State<PreLanguage> createState() => _PreLanguageState();
}

class _PreLanguageState extends State<PreLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hearing Loss or Deafness',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 1.	Speech Development: Monitor your child's speech development from an early age. Notice if they have difficulty producing speech sounds, forming words, or using age-appropriate vocabulary.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 270,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 2.	Language Development: Pay attention to your child's language development, including comprehension and expression. Notice if they have difficulty understanding spoken language, following directions, or expressing their thoughts and ideas clearly.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Articulation and Pronunciation: Be observant of your child's articulation and pronunciation skills. Notice if they have trouble producing specific speech sounds correctly or if their speech is unclear or difficult to understand.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 180,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 4.	Fluency: Monitor your child's fluency in speech. Notice if they exhibit stuttering or other disruptions in the flow of speech, such as repetitions, prolongations, or blocks.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 5.	Voice Quality: Be aware of your child's voice quality. Notice if they have hoarseness, raspiness, or other abnormalities in voice production that may indicate vocal cord issues or other voice disorders.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 240,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 6.	Social Communication: Pay attention to your child's social communication skills. Notice if they have difficulty engaging in conversations, taking turns during interactions, or understanding nonverbal cues such as facial expressions and body language.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 240,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 7.	Language Structure: Be observant of your child's ability to use language structure correctly, including grammar, syntax, and sentence structure. Notice if they have trouble forming complete sentences, using correct verb tense, or organizing their thoughts coherently.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 270,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("8.	Developmental Context: Consider your child's developmental context and exposure to language-rich environments. Factors such as bilingualism, socioeconomic status, and cultural background can influence language development and may impact your child's communication skills.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),



          ],
        ),
      ),
    );
  }

}
