import 'package:flutter/material.dart';

class HowDown extends StatefulWidget {
  const HowDown({super.key});

  @override
  State<HowDown> createState() => _HowDownState();
}

class _HowDownState extends State<HowDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Down syndrome',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" * Educate Yourself: Learn about Down syndrome and its potential effects on your child's development. Understanding their condition will help you provide appropriate support and advocacy.",
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
                child: Text(" * Focus on Abilities: Celebrate your child's strengths and abilities rather than focusing on limitations. Every child with Down syndrome is unique and has their own talents and potential.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 170,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Early Intervention: Seek out early intervention services to support your child's development in areas such as speech and language, motor skills, and socialization. ",
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
                child: Text(" * Early intervention can make a significant difference in your child's progress.",
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
                child: Text(" * Encourage Independence: Like all children, those with Down syndrome benefit from opportunities to develop independence and self-reliance. Encourage your child to take on tasks and responsibilities appropriate to their age and abilities.",
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
                child: Text(" * Provide Structure and Routine: Children with Down syndrome often thrive in structured environments with predictable routines. Establishing consistent daily routines can help your child feel secure and confident.",
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
                child: Text(" * Promote Inclusion: Advocate for your child's inclusion in school, social activities, and community events. Encourage classmates, teachers, and other parents to understand and embrace individual differences.",
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
                child: Text(" * Encourage Socialization: Help your child develop social skills and friendships by providing opportunities for social interaction with peers, siblings, and other children. ",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 120,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Support their participation in activities such as playdates, sports, and clubs.",
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
                child: Text(" * Address Health Needs: Children with Down syndrome may have specific health needs, such as regular medical check-ups, therapies, and interventions. Stay proactive in addressing your child's health needs and consult with healthcare professionals as needed.",
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
                child: Text(" * Seek Support: Connect with other parents of children with Down syndrome for support, guidance, and shared experiences. Joining support groups or online communities can provide valuable resources and a sense of belonging.",
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
                child: Text(" * Celebrate Achievements: Celebrate your child's achievements, no matter how big or small. Recognize their progress and efforts, and encourage them to pursue their interests and passions.",
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
                child: Text(" * Above all, remember that your child with Down syndrome is first and foremost your child, deserving of unconditional love, acceptance, and respect. Embrace their uniqueness, advocate for their needs, and cherish the journey of parenthood together.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 25),




          ],
        ),
      ),
    );
  }

}


