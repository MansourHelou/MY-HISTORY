import 'package:flutter/material.dart';


class HowBlindness extends StatefulWidget {
  const HowBlindness({super.key});

  @override
  State<HowBlindness> createState() => _HowBlindnessState();
}

class _HowBlindnessState extends State<HowBlindness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blindness',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                child: Text(" * Learn Braille: If your child is blind, learning Braille can greatly enhance their independence and access to information. Consider taking classes together or seeking instruction from a qualified teacher of the visually impaired.",
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
                child: Text(" * Encourage Tactile Exploration: Since vision is not available, encourage your child to explore their environment through touch and other senses. Provide opportunities for tactile experiences, such as playing with different textures, exploring nature, and engaging in hands-on activities. ",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 220,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" * Use Descriptive Language: When describing people, objects, or surroundings, use vivid and descriptive language to help your child build a mental image of their environment. Include details about size, shape, texture, and spatial relationships.",
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
                child: Text(" * Promote Auditory Skills: Help your child develop strong auditory skills by exposing them to a variety of sounds and encouraging active listening. This can help compensate for the lack of visual input and enhance their spatial awareness.",
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
                child: Text(" * Teach Adaptive Skills: Teach your child adaptive skills such as using a cane or guide dog, navigating public transportation, and using assistive technology like screen readers and speech-to-text software. ",
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
                child: Text(" * Foster Social Connections: Encourage your child to build social connections with peers, family members, and mentors who understand and support them. Facilitate opportunities for social interaction through clubs, sports, and community events.",
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
                child: Text(" * Provide Opportunities for Inclusion: Advocate for your child's inclusion in mainstream educational settings, extracurricular activities, and social events. Work with teachers and administrators to ensure accommodations are provided to support your child's learning and participation. ",
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
                child: Text(" * Encourage Independence: Like children with visual impairments, blind children benefit from opportunities to develop independence and self-reliance. Encourage them to take on tasks and responsibilities appropriate to their age and abilities.",
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
                child: Text(" * Access Support Services: Seek out support services specifically tailored to the needs of blind children and their families. This may include orientation and mobility training, specialized education programs, and access to assistive technology.",
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
                child: Text(" *  Celebrate Diversity: Help your child embrace their blindness as part of their identity and celebrate the diversity of human experience. Encourage them to take pride in their abilities and accomplishments, and support them in pursuing their dreams and aspirations.",
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
                child: Text(" * As with any parenting journey, patience, love, and understanding are key. Celebrate your child's strengths, support them through challenges, and empower them to thrive in a world that may be different but is no less rich and rewarding. ",
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


