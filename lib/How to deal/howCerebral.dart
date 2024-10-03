import 'package:flutter/material.dart';

class HowPalsy extends StatefulWidget {
  const HowPalsy({super.key});

  @override
  State<HowPalsy> createState() => _HowPalsyState();
}

class _HowPalsyState extends State<HowPalsy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cerebral Palsy',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" * Educate Yourself: Learn about cerebral palsy, including its causes, symptoms, and potential challenges. Understanding the condition will help you make informed decisions and advocate effectively for your child.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 250,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Early Intervention: Seek early intervention services for your child, including physical therapy, occupational therapy, and speech therapy. Early intervention can help improve motor function, communication skills, and overall development.",
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
                child: Text(" * Create a Supportive Environment: Create a nurturing and accessible environment at home that meets your child's physical and developmental needs. Make adaptations and modifications as necessary to promote independence and participation in daily activities",
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
                child: Text(" * Encourage Movement and Physical Activity: Encourage your child to engage in regular physical activity and movement exercises to improve strength, flexibility, and coordination. Provide opportunities for active play and exploration in a safe and supportive environment. ",
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
                child: Text(" * Facilitate Communication: Support your child's communication skills by using clear, simple language and providing alternative communication methods if needed, such as sign language or communication boards. Encourage your child to express their thoughts, feelings, and needs in ways that work best for them.",
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
                child: Text(" * Advocate for Accessibility: Advocate for your child's rights to access inclusive education, healthcare, and community resources. Work with educators, healthcare professionals, and community organizations to ensure that your child's needs are met and accommodations are provided as needed. ",
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
                child: Text(" * Build a Support Network: Connect with other parents of children with cerebral palsy for support, information, and resources. Join support groups, online forums, or community organizations to share experiences, learn from others, and access additional support services.",
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
                child: Text(" * Promote Independence: Encourage your child to develop independence and self-help skills by providing opportunities for practice and support as needed. Break tasks into manageable steps and celebrate your child's achievements and progress.",
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
                child: Text(" * Stay Positive and Resilient: Focus on your child's strengths, abilities, and potential for growth, rather than limitations. Stay positive, resilient, and optimistic about your child's future, and celebrate their unique qualities and accomplishments.",
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
                child: Text(" * Take Care of Yourself: Remember to prioritize self-care and seek support from family, friends, and healthcare professionals. Managing the challenges of raising a child with cerebral palsy can be demanding, so it's essential to take care of your own physical and emotional well-being.",
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
                child: Text(" * By providing love, support, and advocacy, you can help your child with cerebral palsy thrive and lead a fulfilling life. Keep an open mind, stay informed, and continue to seek out resources and support to meet your child's evolving needs.",
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


