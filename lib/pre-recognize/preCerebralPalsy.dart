import 'package:flutter/material.dart';

class PreCerebral extends StatefulWidget {
  const PreCerebral({super.key});

  @override
  State<PreCerebral> createState() => _PreCerebralState();
}

class _PreCerebralState extends State<PreCerebral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cerebral Pulsy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" 1.	Motor Development: Pay attention to your child's motor development from infancy. Look for delays in achieving motor milestones such as rolling over, sitting up, crawling, and walking.",
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
                child: Text("  2.	Muscle Tone: Notice if your child exhibits abnormal muscle tone, which can manifest as stiffness (hypertonia) or floppiness (hypotonia) in the muscles. Observe how they move and whether their movements appear stiff, jerky, or uncoordinated.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Reflexes: Observe your child's reflexes, including the Moro reflex (startle reflex), rooting reflex, and grasp reflex. Notice if these reflexes persist beyond the typical age range or if they are absent.",
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
                child: Text("  4.	Balance and Coordination: Watch for signs of balance and coordination difficulties. Notice if your child has trouble maintaining balance while sitting or standing, or if they have difficulty coordinating movements, such as reaching for objects or grasping toys.",
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
                child: Text(" 5.	Muscle Control: Be aware of challenges related to muscle control, such as involuntary movements (spasticity), muscle stiffness, or difficulty controlling movements precisely.",
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
                child: Text(" 6.	Speech and Language Delays: Monitor your child's speech and language development. While cerebral palsy primarily affects movement and posture, it can also impact speech production and communication skills.",
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
                child: Text(" 7.	Feeding Difficulties: Notice if your child experiences difficulties with feeding or swallowing, such as choking, gagging, or difficulty coordinating sucking and swallowing.",
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


