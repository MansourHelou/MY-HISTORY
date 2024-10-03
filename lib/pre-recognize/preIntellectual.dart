import 'package:flutter/material.dart';

class PreIntellectual extends StatefulWidget {
  const PreIntellectual({super.key});

  @override
  State<PreIntellectual> createState() => _PreIntellectualState();
}

class _PreIntellectualState extends State<PreIntellectual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intellectual disability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
              height: 220,
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
                child: Text(" 6.	School Performance: Observe your child's performance in school and educational settings. Notice if they struggle academically, require additional support or accommodations, or have difficulty with tasks that require cognitive or adaptive skills.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 280,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 7.	Assessment Tools: If you have concerns about your child's intellectual development, consult with healthcare professionals, educators, or psychologists for comprehensive assessments using standardized tools and measures of intellectual functioning and adaptive behavior.",
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
                child: Text(" 8.	Family History: Consider your family history of intellectual disability or related conditions. If other family members have experienced challenges with intellectual functioning, your child may be at a higher risk of intellectual disability.",
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



