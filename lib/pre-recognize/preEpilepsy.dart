import 'package:flutter/material.dart';

class PreEpilepsy extends StatefulWidget {
  const PreEpilepsy({super.key});

  @override
  State<PreEpilepsy> createState() => _PreEpilepsyState();
}

class _PreEpilepsyState extends State<PreEpilepsy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Epilepsy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" 1.	Seizures: Be aware of the different types of seizures and their symptoms. Seizures can manifest in various ways, including convulsions, staring spells, repetitive movements, unusual sensations, or temporary confusion or loss of consciousness.",
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
                child: Text(" 2.	Developmental Delays: Monitor your child's developmental milestones, including motor skills, speech and language development, cognitive abilities, and social-emotional development. Notice if your child experiences delays or regressions in these areas, which may be associated with epilepsy.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 270,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Unexplained Behaviors or Movements: Pay attention to any unexplained behaviors or movements that your child exhibits, especially if they occur suddenly and repetitively. These behaviors may include blinking rapidly, lip-smacking, or unusual movements of the arms or legs.",
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
                child: Text(" 4.	Changes in Awareness or Consciousness: Be observant of changes in your child's awareness or consciousness during episodes. Notice if they appear confused, disoriented, or unaware of their surroundings before, during, or after a seizure.",
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
                child: Text(" 5.	Physical Symptoms: Be aware of any physical symptoms that accompany seizures, such as muscle stiffness, jerking movements, drooling, or loss of bladder or bowel control.",
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
                child: Text(" 6.	Aura or Warning Signs: Some individuals with epilepsy experience an aura or warning signs before a seizure occurs. These may include visual disturbances, unusual smells or tastes, feelings of déjà vu or fear, or sudden changes in mood or emotions.",
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
                child: Text(" 7.	Frequency and Duration of Seizures: Monitor the frequency and duration of seizures your child experiences. Notice if they occur in clusters or if there are specific triggers or patterns associated with their occurrence.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 250,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 8.	Postictal State: Be aware of the postictal state that occurs after a seizure. Notice if your child appears confused, tired, or disoriented following a seizure, and observe how long it takes for them to return to their normal state of functioning.",
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



