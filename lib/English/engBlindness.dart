import 'package:flutter/material.dart';
import 'package:sample/translate/arabicBlindness.dart';
class engBlindness extends StatefulWidget {
  const engBlindness({super.key});

  @override
  State<engBlindness> createState() => _engBlindnessState();
}

class _engBlindnessState extends State<engBlindness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blindness',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 710,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Blindness is the complete absence or severe limitation of vision, resulting in significant challenges in daily activities. It can be caused by various factors, including eye diseases, injuries, or congenital conditions. Individuals who are blind rely on alternative sensory modalities, such as touch, hearing, and smell, to navigate their surroundings and interact with the world. Adaptive techniques and assistive technologies, such as Braille, white canes, and screen readers, enhance their independence and access to information. Inclusive education, employment opportunities, and accessible environments are crucial for promoting the full inclusion and participation of individuals who are blind in society. Advocacy efforts and awareness campaigns help break down barriers and promote equal rights and opportunities for people with blindness.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicBlindness()));
            },child: Padding(
              padding: const EdgeInsets.only(right: 90,left: 90,top: 10,bottom: 10),
              child: Text("Translate to arabic >>",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            )),
            SizedBox(height: 40),

          ],
        ),
      ),
    );
  }

}
