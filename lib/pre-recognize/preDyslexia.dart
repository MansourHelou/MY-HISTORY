import 'package:flutter/material.dart';

class PreDyslexia extends StatefulWidget {
  const PreDyslexia({super.key});

  @override
  State<PreDyslexia> createState() => _PreDyslexiaState();
}

class _PreDyslexiaState extends State<PreDyslexia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dyslexia',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            Container(
              width: 400,
              height: 180,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 1.	Language Development: Monitor your child's language development from an early age. Notice if they have difficulty learning and recognizing the alphabet, forming words, or rhyming.",
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
                child: Text("2.	Reading Skills: Pay attention to your child's reading skills as they begin to learn to read. Notice if they struggle with decoding words, recognizing sight words, or understanding the meaning of what they read.",
                  style: TextStyle(fontSize: 21),),
              ),
            ),
            Container(
              width: 400,
              height: 180,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(" 3.	Spelling Abilities: Be observant of your child's spelling abilities. Notice if they have difficulty spelling words phonetically, remembering spelling rules, or organizing letters within words.",
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
                child: Text(" 4.	Writing Skills: Monitor your child's writing skills. Notice if they have trouble with handwriting, letter formation, spacing, or organizing their thoughts coherently on paper.",
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
                child: Text(" 5.	Phonological Awareness: Be aware of your child's phonological awareness, which involves the ability to identify and manipulate the sounds in spoken language. Notice if they struggle with tasks such as rhyming, blending sounds to form words, or segmenting words into individual sounds.",
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
                child: Text(" 6.	Memory and Sequencing: Pay attention to your child's memory and sequencing skills. Notice if they have difficulty remembering information, following multi-step directions, or recalling the sequence of events in a story.",
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
                child: Text(" 7.	Visual Processing: Be observant of your child's visual processing skills. Notice if they have difficulty distinguishing between similar-looking letters or words, tracking text across a page, or recognizing words by sight.",
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
                child: Text(" 8.	Comprehension: Monitor your child's reading comprehension abilities. Notice if they have difficulty understanding and retaining information from texts, answering questions about what they've read, or making inferences and predictions.",
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
