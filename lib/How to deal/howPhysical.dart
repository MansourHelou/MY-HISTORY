import 'package:flutter/material.dart';

class HowPhysical extends StatefulWidget {
  const HowPhysical({super.key});

  @override
  State<HowPhysical> createState() => _HowPhysicalState();
}

class _HowPhysicalState extends State<HowPhysical> {
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
              height: 230,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Educate Yourself: Learn about your child's specific physical disability, including its causes, symptoms, and implications for their daily life. Understanding their condition will help you provide appropriate support and advocacy.",
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
                child: Text(" * Create an Accessible Environment: Make your home and surroundings accessible and inclusive for your child. This may involve making modifications such as installing ramps, grab bars, or adaptive equipment, as well as ensuring pathways are clear and obstacles are minimized.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 260,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Encourage Independence: Support your child in developing independence and self-reliance by encouraging them to participate in activities and tasks to the best of their abilities. Provide opportunities for them to learn and practice skills for daily living, mobility, and self-care.",
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
                child: Text(" * Address Mobility Needs: Work with healthcare professionals and therapists to address your child's mobility needs. This may include providing assistive devices such as wheelchairs, walkers, or braces, as well as arranging physical therapy or rehabilitation services to help them maximize their mobility and function.",
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
                child: Text(" * Promote Adaptability: Help your child adapt to their physical disability by providing adaptive tools, techniques, and strategies. Encourage them to find creative solutions to overcome challenges and accomplish their goals.",
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
                child: Text(" * Advocate for Accessibility: Advocate for your child's access to accessible facilities, services, and opportunities in their community, including schools, parks, recreational activities, and public transportation. Work with organizations and policymakers to promote inclusivity and accessibility for people with disabilities.",
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
                child: Text(" * Address Emotional Needs: Be sensitive to your child's emotional needs and experiences related to their physical disability. Offer support, encouragement, and reassurance, and help them develop resilience and self-confidence in navigating their unique challenges.",
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
                child: Text(" * Promote Social Connections: Encourage your child to build social connections and friendships with peers, family members, and mentors who accept and support them. ",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 140,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Facilitate opportunities for social interaction and participation in activities that align with their interests and abilities.",
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
                child: Text(" * Access Support Services: Seek out support services and resources for children with physical disabilities, including healthcare providers, therapists, and community organizations. Take advantage of available programs and services to address your child's needs and enhance their quality of life.",
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
                child: Text(" * Take Care of Yourself: Parenting a child with a physical disability can be demanding, both physically and emotionally. Prioritize self-care, seek support from family and friends, and connect with other parents of children with disabilities for mutual support and understanding.",
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



