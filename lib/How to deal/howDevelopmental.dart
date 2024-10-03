import 'package:flutter/material.dart';

class HowDEV extends StatefulWidget {
  const HowDEV({super.key});

  @override
  State<HowDEV> createState() => _HowDEVState();
}

class _HowDEVState extends State<HowDEV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Developmental disability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" * Learn About the Disability: educating yourself about your child's specific developmental disability is essential. Understand the challenges they may face and the strategies that can help them thrive.",
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
                child: Text(" * Early Intervention: Early intervention services are crucial for children with developmental disabilities. Seek evaluations and assessments as early as possible to identify your child's needs and access appropriate support services.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 260,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Create a Supportive Environment: Foster a supportive and inclusive environment at home where your child feels loved, accepted, and encouraged to explore their interests and abilities. Celebrate their achievements and provide reassurance during challenging times.",
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
                child: Text(" * Individualized Support Plan: Work with your child's school and healthcare providers to develop an individualized support plan tailored to their needs. This plan may include accommodations, therapies, and specialized education services.",
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
                child: Text(" * Therapy and Interventions: Depending on your child's needs, they may benefit from various therapies such as speech therapy, occupational therapy, physical therapy, or behavioral therapy. Consistent therapy sessions can help address specific challenges and enhance your child's skills.",
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
                child: Text(" * Use Assistive Technology: Explore assistive technology tools and devices that can support your child's learning and communication. From communication apps to sensory tools, there are many options available to enhance their independence and participation.",
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
                child: Text(" * Encourage Socialization: Help your child build social skills and friendships by facilitating opportunities for socialization. Encourage participation in inclusive activities, clubs, and community events where they can interact with peers in a supportive environment.",
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
                child: Text(" * Promote Independence: Foster independence by teaching your child life skills and encouraging them to take on age-appropriate responsibilities. Break tasks down into manageable steps and provide positive reinforcement for their efforts.",
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
                child: Text(" * Self-Care for Parents: Caring for a child with a developmental disability can be demanding. Remember to prioritize self-care and seek support when needed. Taking care of your physical and emotional well-being will enable you to better support your child.",
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
                child: Text(" * Advocate for Your Child: Be an advocate for your child's needs and rights. Stay informed about relevant laws and policies, and work with educators and healthcare professionals to ensure that your child receives the support and accommodations they require.",
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


