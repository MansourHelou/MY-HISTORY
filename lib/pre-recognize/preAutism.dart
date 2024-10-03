import 'package:flutter/material.dart';

class PreAutism extends StatefulWidget {
  const PreAutism({super.key});

  @override
  State<PreAutism> createState() => _PreAutismState();
}

class _PreAutismState extends State<PreAutism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autism',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" 1.	Observation of Social Interaction: Pay attention to how your child interacts with others. Look for signs such as difficulty making eye contact, limited social reciprocity, or challenges in understanding social cues and norms.",
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
                child: Text(" 2.	Communication Skills: Notice if your child has delays or difficulties in speech and language development. Look for signs such as delayed or limited speech, echolalia (repeating words or phrases), or difficulty initiating or sustaining conversations.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 260,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Repetitive Behaviors and Restricted Interests: Be aware of repetitive behaviors or interests that are intense, focused, and limited in scope. These may include repetitive body movements (e.g., hand-flapping), insistence on sameness or routines, and intense interests in specific topics or objects.",
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
                child: Text(" 4.	Sensory Sensitivities: Observe how your child responds to sensory stimuli. Look for signs of sensory sensitivities or sensory-seeking behaviors, such as covering ears in response to loud noises, avoiding certain textures or sensations, or seeking out intense sensory experiences.",
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
                child: Text(" 5.	Developmental Milestones: Monitor your child's developmental milestones across various domains, including social, communication, cognitive, and motor skills. Notice any delays or differences compared to typical developmental patterns.",
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

