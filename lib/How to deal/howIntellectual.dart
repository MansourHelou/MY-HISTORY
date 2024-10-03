import 'package:flutter/material.dart';

class HowIntellectual extends StatefulWidget {
  const HowIntellectual({super.key});

  @override
  State<HowIntellectual> createState() => _HowIntellectualState();
}

class _HowIntellectualState extends State<HowIntellectual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intellectual disability',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 170,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Understand Your Child's Needs: Learn as much as you can about your child's specific intellectual disability, including its causes, characteristics, and potential challenges. ",
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
                child: Text(" * Understanding their needs will help you provide appropriate support and advocacy.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 200,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Focus on Strengths: Celebrate your child's strengths and abilities, rather than focusing solely on their limitations. Every child, regardless of ability, has unique talents and potential to contribute.",
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
                child: Text(" * Set Realistic Expectations: Set realistic and achievable expectations for your child, taking into account their individual strengths and challenges. Break tasks into manageable steps, provide clear instructions, and offer praise and encouragement for effort and progress.",
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
                child: Text(" * Provide Structure and Routine: Children with intellectual disabilities often benefit from consistent routines and structure. Establish predictable daily schedules for activities such as meals, bedtime, and homework to help your child feel more organized and secure.",
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
                child: Text(" * Adapt Teaching Strategies: Adapt your teaching strategies to meet your child's learning needs. Use visual aids, hands-on activities, and repetition to reinforce concepts, and provide extra support or modifications as needed.",
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
                child: Text(" * Encourage Independence: Encourage your child to develop independence and self-confidence by allowing them to take on tasks and responsibilities appropriate to their abilities. Offer guidance and support as needed, but also encourage them to problem-solve and make decisions on their own.",
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
                child: Text(" * Promote Social Skills: Help your child develop social skills and build relationships with peers and family members. Provide opportunities for social interaction, teach social cues and norms, and encourage empathy and kindness.",
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
                child: Text(" * Access Support Services: Seek out support services and resources for children with intellectual disabilities, such as special education programs, therapy services, and community support groups. Work with professionals to develop an individualized plan to meet your child's needs.",
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
                child: Text(" * Advocate for Inclusion: Advocate for your child's inclusion in school, community activities, and social events. Work with teachers, administrators, and other parents to ensure that your child has access to inclusive opportunities and experiences.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 250,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Take Care of Yourself: Parenting a child with an intellectual disability can be demanding, both emotionally and physically. Prioritize self-care, seek support from family and friends, and connect with other parents facing similar challenges.",
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


