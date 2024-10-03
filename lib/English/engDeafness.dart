import 'package:flutter/material.dart';
import 'package:sample/translate/arabicdeafness.dart';
class engDeafness extends StatefulWidget {
  const engDeafness({super.key});

  @override
  State<engDeafness> createState() => _engDeafnessState();
}

class _engDeafnessState extends State<engDeafness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hearing loss or deafness',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("Hearing Loss or Deafness: Hearing loss or deafness refers to partial or complete impairment of hearing ability, which can result from various factors, including genetic conditions, illness, injury, or aging. Hearing loss may be conductive (involving the outer or middle ear), sensorineural (involving the inner ear or auditory nerve), or mixed. Deafness refers to profound hearing loss or the inability to hear sound at all. Hearing loss can have significant effects on communication, language development, social interaction, and educational attainment. Treatment options for hearing loss may include hearing aids, cochlear implants, assistive listening devices, and auditory rehabilitation services. Deaf culture and sign language play an essential role in the identity and communication of individuals who are deaf or hard of hearing. Accessibility accommodations, such as captioning, sign language interpreters, and loop systems, promote equal access to information and services for people with hearing loss.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicDeafness()));
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


