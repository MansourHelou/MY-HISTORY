import 'package:flutter/material.dart';

class PreDeafness extends StatefulWidget {
  const PreDeafness({super.key});

  @override
  State<PreDeafness> createState() => _PreDeafnessState();
}

class _PreDeafnessState extends State<PreDeafness> {
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
              height: 180,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 1.	Response to Sound: Monitor your child's response to sound from infancy. Notice if they startle in response to loud noises, turn their head towards sounds, or react to voices or music.",
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
                child: Text(" 2.	Language Development: Pay attention to your child's language development. Notice if they have delays or difficulties in babbling, speaking, or understanding spoken language.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 180,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Speech Production: Be observant of your child's speech production. Notice if their speech is unclear, if they have difficulty pronouncing certain sounds, or if their voice quality is affected.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 4.	Communication Skills: Monitor your child's communication skills in various settings. Notice if they have trouble following conversations, responding to questions, or participating in social interactions.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 230,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 5.	Social Interactions: Pay attention to your child's social interactions with peers and adults. Notice if they have difficulty engaging in conversations, maintaining eye contact, or understanding nonverbal cues such as facial expressions and gestures.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 6.	Academic Performance: Be aware of any challenges your child may face in academic settings. Notice if they have difficulty following instructions, participating in classroom discussions, or achieving academic goals despite their intelligence or effort.",
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
                child: Text(" 7.	Family History: Consider your family history of hearing loss or related conditions. If other family members have experienced hearing difficulties, your child may be at a higher risk of hearing loss.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 8.	Medical History: Be aware of any factors that may increase your child's risk of hearing loss, such as a history of ear infections, exposure to loud noises, or certain medical conditions or treatments that affect hearing.",
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



