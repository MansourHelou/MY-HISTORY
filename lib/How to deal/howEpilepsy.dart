import 'package:flutter/material.dart';

class HowEpilepsy extends StatefulWidget {
  const HowEpilepsy({super.key});

  @override
  State<HowEpilepsy> createState() => _HowEpilepsyState();
}

class _HowEpilepsyState extends State<HowEpilepsy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Epilepsy ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" * Educate Yourself: Learn about epilepsy, including its causes, types of seizures, and treatment options. Understanding your child's condition will help you recognize and respond effectively to seizures.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 265,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Create a Safe Environment: Take steps to create a safe environment for your child, both at home and in other settings. Minimize potential hazards, such as sharp objects or hard surfaces, and consider implementing safety measures such as padding furniture or using seizure alarms.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 260,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Develop a Seizure Action Plan: Work with your child's healthcare team to develop a seizure action plan that outlines what to do before, during, and after a seizure. Make sure family members, caregivers, and teachers are familiar with the plan and know how to respond appropriately.",
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
                child: Text(" * Administer Medication as Prescribed: If your child requires medication to manage their epilepsy, ensure they take it as prescribed by their healthcare provider. Establish a consistent medication routine and keep track of doses to help prevent missed doses or medication errors.",
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
                child: Text(" * Monitor Triggers: Identify and monitor potential triggers for your child's seizures, such as lack of sleep, stress, or flashing lights. Take steps to minimize or avoid triggers when possible, and encourage healthy lifestyle habits such as regular sleep, exercise, and stress management.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 265,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Support Emotional Well-being: Living with epilepsy can be emotionally challenging for children. Be supportive, understanding, and patient, and encourage open communication about their feelings and experiences. Seek professional support from therapists or counselors if needed.",
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
                child: Text(" * Educate Others: Educate family members, caregivers, teachers, and classmates about epilepsy to reduce stigma and promote understanding. Teach them how to recognize seizures and respond appropriately, and encourage a supportive and inclusive environment.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 170,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Encourage Independence: Encourage your child to develop independence and self-confidence, while also providing appropriate supervision and support as needed.",
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
                child: Text(" * Help them build skills to manage their epilepsy and advocate for themselves as they grow older.",
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
                child: Text(" * Stay Connected with Healthcare Providers: Maintain regular communication with your child's healthcare team, including neurologists, epilepsy specialists, and other relevant providers. Attend scheduled appointments, ask questions, and keep them updated on any changes in your child's condition or treatment.",
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
                child: Text(" * Take Care of Yourself: Parenting a child with epilepsy can be stressful and demanding. Take time to prioritize self-care, seek support from family and friends, and consider joining support groups or connecting with other parents of children with epilepsy.",
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



