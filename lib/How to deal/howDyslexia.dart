import 'package:flutter/material.dart';

class HowDyslexia extends StatefulWidget {
  const HowDyslexia({super.key});

  @override
  State<HowDyslexia> createState() => _HowDyslexiaState();
}

class _HowDyslexiaState extends State<HowDyslexia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dyslexia',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" *  Educate Yourself: Learn as much as you can about dyslexia. Understand its symptoms, challenges, and strengths. This knowledge will help you support your child effectively.",
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
                child: Text(" * Early Intervention: Early detection and intervention are crucial. If you suspect your child has dyslexia, consult with professionals such as psychologists, educational therapists, or special education teachers. They can assess your child and provide recommendations for support.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 110,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Create a Supportive Environment: Encourage a positive attitude towards learning. ",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 120,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Praise your child's efforts and celebrate their achievements, no matter how small.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 140,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Create a safe space where they feel comfortable expressing their frustrations and seeking help when needed.",
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
                child: Text(" * Use Multi-Sensory Learning: Dyslexic children often benefit from multisensory teaching methods that engage multiple senses simultaneously. This might include using visual aids, hands-on activities, and auditory cues to reinforce learning.",
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
                child: Text(" * Individualized Learning Plan: Work with your child's school to develop an Individualized Education Program (IEP) or a 504 plan tailored to their specific needs. This plan may include accommodations such as extra time on tests, access to audiobooks, or preferential seating in the classroom.",
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
                child: Text(" * Assistive Technology: Explore assistive technology tools that can aid your child's learning. Text-to-speech software, speech recognition programs, and dyslexia-friendly fonts can help make reading and writing tasks more accessible.",
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
                child: Text(" * Encourage Reading: Although reading may be challenging for dyslexic children, encourage them to read regularly. Provide access to books that match their interests and reading level. Audiobooks can also be a valuable alternative for accessing literature.",
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
                child: Text(" * Build Self-Esteem: Help your child build confidence and self-esteem by focusing on their strengths and talents. Engage them in activities where they excel and encourage them to pursue their passions.",
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
                child: Text(" * Seek Support: Connect with other parents of dyslexic children for support and advice. Joining support groups or online communities can provide valuable insights and a sense of solidarity.",
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
                child: Text(" * Be Patient and Persistent: Remember that progress may be slow and uneven, but with patience and persistence, your child can overcome challenges and reach their full potential.",
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



