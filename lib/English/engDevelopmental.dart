import 'package:flutter/material.dart';
import 'package:sample/translate/arabicDevelopmental.dart';
class engDev extends StatefulWidget {
  const engDev({super.key});

  @override
  State<engDev> createState() => _engDevState();
}

class _engDevState extends State<engDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developmental disability',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 770,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Developmental disability is a broad category encompassing various chronic conditions that originate before adulthood and result in significant limitations in physical, cognitive, or behavioral development. These disabilities may affect learning, communication, mobility, self-care, and socialization skills, and typically require lifelong support and services. Examples of developmental disabilities include autism spectrum disorder (ASD), intellectual disability, cerebral palsy, and genetic syndromes such as Down syndrome. Early intervention, educational support, and community-based services are essential for promoting the well-being, independence, and inclusion of individuals with developmental disabilities. Advocacy efforts and disability rights movements work to ensure equal rights, opportunities, and access to resources for people with developmental disabilities.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicDev()));
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


