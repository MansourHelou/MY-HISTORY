import 'package:flutter/material.dart';

class PrePhysical extends StatefulWidget {
  const PrePhysical({super.key});

  @override
  State<PrePhysical> createState() => _PrePhysicalState();
}

class _PrePhysicalState extends State<PrePhysical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Physical disability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 240,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 1.	Motor Skills Development: Monitor your child's motor skills development from infancy. Notice if they experience delays or difficulties in achieving motor milestones such as sitting up, crawling, standing, walking, or using fine motor skills like grasping objects.",
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
                child: Text(" 2.	Muscle Tone and Strength: Be observant of your child's muscle tone and strength. Notice if they have decreased muscle tone (hypotonia) or increased muscle tone (hypertonia), which may affect their ability to move and control their body.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 240,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Coordination and Balance: Pay attention to your child's coordination and balance abilities. Notice if they have difficulty coordinating movements or maintaining balance, which may impact activities such as walking, running, or playing sports.",
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
                child: Text(" 4.	Mobility: Be aware of any mobility challenges your child may experience. Notice if they require assistive devices such as wheelchairs, walkers, crutches, or orthotics to support their mobility needs.",
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
                child: Text(" 5.	Independence in Activities of Daily Living (ADLs): Monitor your child's independence in performing activities of daily living such as dressing, feeding, bathing, toileting, and grooming. Notice if they require assistance or adaptations to complete these tasks independently.",
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
                child: Text(" 6.	Pain or Discomfort: Be attentive to signs of pain or discomfort that your child may experience related to their physical disability. Notice if they exhibit changes in behavior, facial expressions, or body language that may indicate discomfort.",
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
                child: Text(" 7.	Accessibility Needs: Consider your child's accessibility needs in various environments such as home, school, and community settings. Be proactive in advocating for accommodations and modifications to support your child's participation and inclusion.",
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
                child: Text(" 8.	Assistive Technology and Equipment: Explore assistive technology devices and adaptive equipment that can support your child's independence and participation. This may include mobility aids, communication devices, adaptive tools, or modified furniture.",
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


