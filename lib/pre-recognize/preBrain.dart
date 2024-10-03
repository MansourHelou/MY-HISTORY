import 'package:flutter/material.dart';

class PreBrain extends StatefulWidget {
  const PreBrain({super.key});

  @override
  State<PreBrain> createState() => _PreBrainState();
}

class _PreBrainState extends State<PreBrain> {
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
              height: 170,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 1.	Loss of Consciousness: Be aware of any loss of consciousness that occurs as a result of an injury to the head. Loss of consciousness may vary in duration from seconds to minutes or longer.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 150,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 2.	Headache: Monitor for persistent or severe headaches following a head injury, which may indicate a concussion or other traumatic brain injury.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 150,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Nausea and Vomiting: Be observant of nausea and vomiting that occur after a head injury, particularly if they persist or worsen over time.",
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
                child: Text(" 4.	Dizziness or Balance Problems: Notice if your child experiences dizziness, loss of balance, or difficulty walking following a head injury, which may indicate disruption of brain function.",
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
                child: Text(" 5.	Changes in Behavior or Mood: Be attentive to changes in your child's behavior or mood following a head injury. These changes may include irritability, mood swings, agitation, or uncharacteristic behaviors.",
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
                child: Text(" 6.	Memory Problems: Monitor for memory problems or difficulties with concentration and attention following a head injury. Your child may have trouble remembering recent events, focusing on tasks, or processing information.",
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
                child: Text(" 7.	Sensitivity to Light or Noise: Notice if your child becomes more sensitive to light or noise after a head injury, which may indicate neurological changes associated with brain injury.",
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
                child: Text(" 8.	Sleep Disturbances: Be aware of changes in your child's sleep patterns following a head injury. They may experience difficulty falling asleep, staying asleep, or excessive drowsiness during the day.",
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
                child: Text(" 9.	Seizures: Monitor for seizures that occur following a head injury, which may indicate more severe brain trauma. Seizures can manifest as convulsions, staring spells, or unusual movements.",
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
                child: Text(" 10.	Loss of Coordination or Weakness: Be observant of changes in your child's coordination, balance, or strength following a head injury. They may have difficulty with fine motor skills, walking, or performing everyday tasks.",
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


