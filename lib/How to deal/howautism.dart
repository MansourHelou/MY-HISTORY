import 'package:flutter/material.dart';

class HowAutism extends StatefulWidget {
  const HowAutism({super.key});

  @override
  State<HowAutism> createState() => _HowAutismState();
}

class _HowAutismState extends State<HowAutism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autism Spectrum Disorders (ASD)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
              child: Text(" * Educate Yourself: Learn as much as you can about ASD, including its characteristics, strengths, and challenges. Understanding your child's unique needs and perspectives is essential for providing effective support.",
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
                child: Text(" * Early Intervention: Seek early intervention services for your child, including assessments, therapies, and support programs. Early intervention can significantly improve outcomes by addressing developmental delays and providing targeted interventions.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Create a Structured Environment: Establish predictable routines and schedules to help your child feel secure and reduce anxiety. Use visual supports, such as schedules, calendars, and picture cards, to enhance understanding and communication.",
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
                child: Text(" * Develop Communication Strategies: Use clear, concise language and visual supports to facilitate communication with your child. Explore alternative communication methods, such as sign language, picture exchange systems, or augmentative and alternative communication (AAC) devices, if needed.",
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
                child: Text(" * Encourage Social Skills Development: Help your child build social skills through structured activities, role-playing, and peer interactions. Provide opportunities for socialization in controlled settings, such as playdates or social skills groups ",
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
                child: Text(" * Support Sensory Needs: Understand your child's sensory sensitivities and preferences and create a sensory-friendly environment at home. Offer sensory activities and tools, such as weighted blankets, fidget toys, or noise-canceling headphones, to help regulate sensory input.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 160,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Promote Independence: Encourage your child to develop independence and self-help skills by breaking tasks into manageable steps and providing support as needed.  ",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Celebrate small successes and provide positive reinforcement to build confidence.",
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
                child: Text(" * Collaborate with Professionals: Work closely with a multidisciplinary team of professionals, including doctors, therapists, educators, and behavioral specialists, to develop and implement a comprehensive treatment plan tailored to your child's needs.",
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
                child: Text(" * Take Care of Yourself: Remember to prioritize self-care and seek support from family, friends, and support groups. Managing the challenges of raising a child with ASD can be emotionally and physically demanding, so it's essential to take care of your own well-being.",
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
                child: Text(" * Celebrate Progress: Celebrate your child's progress and achievements, no matter how small. Recognize their strengths and unique abilities, and focus on their potential for growth and development. ",
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
                child: Text(" * Every child with ASD is unique, so it's essential to approach parenting with flexibility, patience, and empathy. By providing love, support, and advocacy, you can help your child with ASD thrive and reach their full potential.",
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

