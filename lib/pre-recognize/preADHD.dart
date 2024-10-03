import 'package:flutter/material.dart';

class PreADHD extends StatefulWidget {
  const PreADHD({super.key});

  @override
  State<PreADHD> createState() => _PreADHDState();
}

class _PreADHDState extends State<PreADHD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADHD',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 1.	Inattention: Be observant of your child's ability to focus and sustain attention on tasks or activities. Notice if they frequently appear easily distracted, have difficulty organizing tasks or activities, or often make careless mistakes due to inattention.",
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
                child: Text(" 2.	Hyperactivity: Monitor your child's activity level and restlessness. Notice if they frequently fidget, squirm, or have difficulty sitting still, especially in situations that require sustained attention or quiet activities.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Impulsivity: Be aware of impulsive behaviors in your child. Notice if they frequently act without considering the consequences, interrupt others in conversations or activities, or have difficulty waiting their turn.",
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
                child: Text(" 4.	Executive Functioning Skills: Pay attention to your child's executive functioning skills, which include abilities such as planning, organization, time management, and problem-solving. Notice if they struggle with tasks that require these skills, such as completing homework assignments or following multi-step instructions.",
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
                child: Text(" 5.	Emotional Regulation: Monitor your child's emotional regulation and mood stability. Notice if they have difficulty managing their emotions, are prone to outbursts of anger or frustration, or have mood swings that interfere with daily functioning.",
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
                child: Text(" 6.	Academic Performance: Be aware of any challenges your child may face in academic settings. Notice if they have difficulty staying on task, completing assignments, or achieving academic goals despite their intelligence or potential.",
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
                child: Text(" 7.	Social Interactions: Observe your child's social interactions with peers and adults. Notice if they have difficulty maintaining friendships, following social rules, or understanding social cues, which may impact their relationships and social development.",
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
                child: Text(" 8.	Consistency of Symptoms: Pay attention to the consistency and persistence of symptoms over time and across different settings. Symptoms of ADHD typically manifest in multiple settings, such as home, school, and social environments.",
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



