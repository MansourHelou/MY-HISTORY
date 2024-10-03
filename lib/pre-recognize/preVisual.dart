import 'package:flutter/material.dart';

class PreVisual extends StatefulWidget {
  const PreVisual({super.key});

  @override
  State<PreVisual> createState() => _PreVisualState();
}

class _PreVisualState extends State<PreVisual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visual Impairment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" 1.	Eye Contact and Visual Responsiveness: Pay attention to your child's eye contact and visual responsiveness from infancy. Notice if they make eye contact with faces or track moving objects with their eyes.",
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
                child: Text(" 2.	Visual Stimulation: Offer visual stimulation and observe your child's response. Notice if they show interest in bright lights, colorful toys, or visually engaging stimuli.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Visual Tracking: Monitor your child's ability to visually track objects or people as they move. Notice if they have difficulty following objects with their eyes or if their eye movements appear jerky or uncoordinated.",
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
                child: Text(" 4.	Reactions to Light: Notice how your child reacts to changes in light or darkness. Observe if they blink excessively in bright light or if they do not respond to changes in light conditions.",
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
                child: Text(" 5.	Physical Signs: Be aware of physical signs that may indicate visual impairment, such as abnormal eye movements (nystagmus), misaligned eyes (strabismus), or cloudy or opaque appearance of the eyes.",
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
                child: Text(" 6.	Developmental Milestones: Monitor your child's developmental milestones related to vision, such as reaching for objects, making eye contact, or responding to visual stimuli. Notice if they experience delays or differences compared to typical developmental patterns.",
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
                child: Text(" 7.	Preverbal Communication: Pay attention to nonverbal cues and communication attempts that may indicate visual impairment. Notice if your child relies more heavily on auditory or tactile cues for communication.",
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
                child: Text(" 8.	Consultation with Healthcare Professionals: If you have concerns about your child's vision, consult with pediatricians, ophthalmologists, or optometrists for a comprehensive eye examination and evaluation of visual function.",
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



