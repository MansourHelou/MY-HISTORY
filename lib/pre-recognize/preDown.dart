import 'package:flutter/material.dart';

class PreDown extends StatefulWidget {
  const PreDown({super.key});

  @override
  State<PreDown> createState() => _PreDownState();
}

class _PreDownState extends State<PreDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Down Syndrome',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" 1.	Physical Characteristics: Be aware of physical features commonly associated with Down syndrome, such as almond-shaped eyes, a flat facial profile, a small nose, and a protruding tongue. However, it's important to note that not all individuals with Down syndrome will have these features, and their presence alone is not indicative of the condition.",
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
                child: Text(" 2.	Developmental Milestones: Monitor your child's developmental milestones across various domains, including motor skills, speech and language development, cognitive abilities, and social-emotional development. Notice if your child experiences delays or differences compared to typical developmental patterns.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 250,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Hypotonia (Low Muscle Tone): Be observant of your child's muscle tone, as individuals with Down syndrome often have hypotonia, or low muscle tone, which can affect their motor skills and coordination. Notice if your child appears floppy or has difficulty with tasks requiring muscle control.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 210,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 4.	Speech and Language Development: Pay attention to your child's speech and language development. Notice if they experience delays in speech production, language comprehension, or communication skills.",
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
                child: Text(" 5.	Cognitive Abilities: Be aware that individuals with Down syndrome may have intellectual disabilities of varying degrees. Monitor your child's cognitive abilities and educational progress, and seek appropriate support and interventions if needed.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 270,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 6.	Health Issues: Individuals with Down syndrome may be at an increased risk for certain health conditions, such as congenital heart defects, hearing loss, vision problems, thyroid disorders, and gastrointestinal issues. Be vigilant in monitoring your child's health and seek medical attention for any concerns.",
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
                child: Text(" 7.	Consultation with Healthcare Professionals: If you have concerns about your child's development or suspect they may have Down syndrome, consult with pediatricians, genetic counselors, or developmental specialists for evaluation, diagnosis, and guidance on appropriate interventions and support services.",
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


