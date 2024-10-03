import 'package:flutter/material.dart';

class HowVisual extends StatefulWidget {
  const HowVisual({super.key});

  @override
  State<HowVisual> createState() => _HowVisualState();
}

class _HowVisualState extends State<HowVisual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visual impairment',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" * Educate Yourself: Learn as much as you can about your child's specific visual impairment, its implications, and available resources. Understanding their condition will help you provide better support.",
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
                child: Text(" * Encourage Independence: While it's natural to want to protect your child, it's essential to encourage independence. Teach them life skills like navigating their environment, using assistive technology, and advocating for themselves.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Communicate Openly: Encourage open communication with your child about their visual impairment. Answer their questions honestly and reassure them that it's okay to ask for help when needed.",
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
                child: Text(" * Promote Inclusion: Advocate for your child's inclusion in school, social activities, and community events. Encourage classmates, teachers, and other parents to understand and accommodate your child's needs.",
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
                child: Text(" *  Provide Emotional Support: Understand that your child may experience frustration, anxiety, or low self-esteem due to their visual impairment. Be patient, empathetic, and provide emotional support as they navigate their feelings. ",
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
                child: Text(" * Encourage Exploration: Encourage your child to explore different interests and hobbies. Expose them to a variety of experiences to help them discover their strengths and passions.",
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
                child: Text(" * Access Support Services: Seek out support services such as orientation and mobility training, assistive technology specialists, and counseling services. These resources can provide valuable support and guidance for both you and your child.  ",
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
                child: Text(" * Celebrate Achievements: Celebrate your child's achievements, both big and small.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 110,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Recognize their efforts and successes to boost their confidence and self-esteem.",
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
                child: Text(" * Take Care of Yourself: Parenting a child with visual impairment can be challenging, so it's essential to take care of yourself too. Seek support from other parents, join support groups, and prioritize self-care to maintain your well-being. ",
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


