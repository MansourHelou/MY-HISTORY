import 'package:flutter/material.dart';

class HowADHD extends StatefulWidget {
  const HowADHD({super.key});

  @override
  State<HowADHD> createState() => _HowADHDState();
}

class _HowADHDState extends State<HowADHD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' ADHD',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 170,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Educate Yourself: Learn about ADHD, including its symptoms, causes, and treatment options. Understanding your child's condition will help you better support and advocate for them.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 235,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Establish Structure and Routine: Children with ADHD often benefit from clear and consistent routines. Establish predictable daily schedules for activities such as meals, homework, and bedtime to help your child feel more organized and secure.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Set Clear Expectations: Be clear and specific about your expectations for behavior and responsibilities. Break tasks into manageable steps, provide clear instructions, and offer positive reinforcement for effort and progress.",
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
                child: Text(" * Encourage Movement and Physical Activity: Children with ADHD often have excess energy to burn. Encourage regular physical activity and movement breaks throughout the day to help your child release energy and improve focus.",
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
                child: Text(" * Provide a Supportive Environment: Create a calm and organized environment at home to help minimize distractions and promote concentration. Designate quiet spaces for homework or activities that require focus, and minimize clutter and visual distractions.",
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
                child: Text(" * Use Visual Aids and Timers: Visual aids such as checklists, schedules, and timers can help your child stay on track and manage their time effectively. Use visual reminders to help them remember tasks and deadlines.",
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
                child: Text(" * Practice Positive Reinforcement: Focus on praising and rewarding positive behaviors rather than solely focusing on challenges. Offer praise, encouragement, and small rewards for effort, progress, and good behavior.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 225,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Teach Coping Skills: Help your child develop coping skills to manage impulsivity, frustration, and emotional regulation. Teach relaxation techniques such as deep breathing or mindfulness exercises to help them calm down when feeling overwhelmed.",
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
                child: Text(" * Work with Teachers and School Personnel: Collaborate with your child's teachers and school personnel to develop a supportive educational plan (such as an Individualized Education Program or 504 Plan) that addresses their unique needs and accommodations.",
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
                child: Text(" * Seek Professional Support: Consider seeking support from mental health professionals, such as therapists or counselors, who specialize in ADHD. They can provide guidance, support, and strategies for managing ADHD-related challenges.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 20),




          ],
        ),
      ),
    );
  }

}


