import 'package:flutter/material.dart';

class HowLanguage extends StatefulWidget {
  const HowLanguage({super.key});

  @override
  State<HowLanguage> createState() => _HowLanguageState();
}

class _HowLanguageState extends State<HowLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language impairment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" * Early Intervention: Early identification and intervention are critical for children with speech or language impairments. Seek assessment and therapy services as soon as concerns arise to address communication challenges promptly.",
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
                child: Text(" * Speech Therapy: Enroll your child in speech therapy sessions with a licensed speech-language pathologist. These professionals can provide targeted interventions to improve speech articulation, language comprehension, and communication skills.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Consistency and Practice: Encourage consistent practice of speech and language skills at home. Incorporate speech therapy exercises into daily routines and activities to reinforce learning and support progress.",
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
                child: Text(" * Use Visual Aids: Visual aids such as pictures, symbols, and gestures can support communication for children with speech or language impairments. Use visual schedules, cue cards, and picture communication systems to enhance understanding and expression.",
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
                child: Text(" * Modeling and Reinforcement: Model clear and correct speech patterns for your child to imitate. Provide positive reinforcement and praise for efforts and improvements in communication. Celebrate milestones and achievements along the way.",
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
                child: Text(" * Create a Supportive Environment: Foster a supportive and inclusive environment where your child feels comfortable expressing themselves. Encourage active listening, patience, and empathy within the family and community.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 300,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * AAC (Augmentative and Alternative Communication): Explore AAC options for children who have significant difficulty with speech. AAC systems such as communication boards, speech-generating devices, and mobile apps can empower nonverbal or minimally verbal children to communicate effectively.",
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
                child: Text(" * Social Skills Development: Help your child develop social skills by providing opportunities for interaction with peers and adults. Encourage participation in social activities, playdates, and group settings where they can practice communication in real-life situations.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 290,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Advocate for Support: Advocate for your child's needs within educational and community settings. Work collaboratively with teachers, therapists, and other professionals to develop Individualized Education Programs (IEPs) or accommodation plans that address communication goals and support academic and social success.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 290,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Seek Support Networks: Connect with other parents of children with speech or language impairments for support, resources, and encouragement. Joining support groups or online communities can provide valuable insights and a sense of solidarity on your parenting journey.",
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



