import 'package:flutter/material.dart';

class HowBrain extends StatefulWidget {
  const HowBrain({super.key});

  @override
  State<HowBrain> createState() => _HowBrainState();
}

class _HowBrainState extends State<HowBrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traumastic Brain Injury',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 225,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Educate Yourself: Learn about traumatic brain injury, including its causes, symptoms, and potential effects on your child's development. Understanding their condition will help you provide appropriate support and advocacy.",
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
                child: Text(" * Follow Medical Guidance: Work closely with your child's healthcare team, including doctors, therapists, and specialists, to develop and implement a comprehensive treatment plan. Follow their recommendations for medical care, therapy, and rehabilitation to support your child's recovery and ongoing needs.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 270,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Create a Supportive Environment: Create a supportive and nurturing environment at home to promote your child's physical and emotional well-being. Minimize stressors and distractions, establish routines, and provide ample opportunities for rest and relaxation.",
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
                child: Text(" * Encourage Rehabilitation and Therapy: Encourage your child to participate in rehabilitation programs and therapies tailored to their specific needs. This may include physical therapy, occupational therapy, speech therapy, and cognitive rehabilitation to help them regain skills and independence.",
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
                child: Text(" * Promote Independence: Support your child's independence and autonomy by encouraging them to participate in activities and tasks to the best of their abilities. ",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 110,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Offer guidance and assistance as needed, but also allow them to take risks and learn from their experiences.",
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
                child: Text(" * Communicate Openly: Encourage open communication with your child about their injury, symptoms, and feelings. Listen to their concerns, validate their experiences, and reassure them that it's okay to ask for help when needed.",
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
                child: Text(" * Manage Behavioral Changes: Traumatic brain injury can cause changes in behavior, mood, and personality. Be patient and understanding, and seek guidance from healthcare professionals on managing challenging behaviors and emotions.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 260,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Advocate for Accommodations: Work with your child's school and other organizations to ensure they receive appropriate accommodations and support. This may include modifications to their learning environment, extra time for assignments or tests, and access to assistive technology.",
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
                child: Text(" * Promote Social Connections: Encourage your child to maintain social connections with friends, family members, and peers. Facilitate opportunities for social interaction and participation in activities that align with their interests and abilities.",
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
                child: Text(" * Take Care of Yourself: Parenting a child with a traumatic brain injury can be emotionally and physically taxing. Prioritize self-care, seek support from family and friends, and consider joining support groups or seeking counseling to help you cope with the challenges.",
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



