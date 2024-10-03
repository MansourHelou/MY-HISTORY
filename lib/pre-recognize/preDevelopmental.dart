import 'package:flutter/material.dart';

class PreDev extends StatefulWidget {
  const PreDev({super.key});

  @override
  State<PreDev> createState() => _PreDevState();
}

class _PreDevState extends State<PreDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developmental disability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 290,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 1.	Developmental Milestones: Monitor your child's developmental milestones across various domains, including motor skills, speech and language development, cognitive abilities, and social-emotional development. Notice if your child experiences delays or differences compared to typical developmental patterns.",
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
                child: Text(" 2.	Cognitive Functioning: Be observant of your child's cognitive abilities and intellectual functioning. Notice if they have difficulty with tasks such as problem-solving, reasoning, memory, attention, or abstract thinking.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Language and Communication: Pay attention to your child's speech and language development. Notice if they have delays or difficulties in expressive language (speaking) or receptive language (understanding).",
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
                child: Text(" 4.	Adaptive Skills: Monitor your child's adaptive skills, which include abilities necessary for independent daily living, such as self-care, communication, socialization, and functional academics (e.g., telling time, counting money).",
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
                child: Text(" 5.	Social and Emotional Development: Be aware of your child's social and emotional development. Notice if they have difficulty forming and maintaining relationships, understanding social cues, regulating emotions, or adapting to changes in routine or environment.",
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
                child: Text(" 6.	Sensory Processing: Monitor your child's sensory processing abilities. Notice if they have heightened sensitivities or difficulties processing sensory input, such as sound, touch, taste, smell, or visual stimuli.",
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
                child: Text(" 7.	Behavioral Challenges: Be observant of any behavioral challenges your child may exhibit, such as aggression, impulsivity, self-injurious behaviors, or difficulty with transitions or changes in routine.",
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
                child: Text(" 8.	Family History: Consider your family history of developmental disabilities or related conditions. If other family members have experienced challenges with developmental milestones or cognitive functioning, your child may be at a higher risk of developmental disability.",
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



