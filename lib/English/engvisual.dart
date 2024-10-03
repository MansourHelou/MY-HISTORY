import 'package:flutter/material.dart';
import 'package:sample/translate/arabicVisual.dart';


class engVisual extends StatefulWidget {
  const engVisual({super.key});

  @override
  State<engVisual> createState() => _engVisualState();
}

class _engVisualState extends State<engVisual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visual impairment',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("Visual impairment refers to a range of conditions that affect an individual's ability to see, ranging from partial sight to blindness. It can result from various causes, including eye diseases, injuries, or neurological conditions. Visual impairment impacts daily activities, such as reading, mobility, and recognizing faces or objects. Individuals with visual impairment often require specialized tools, such as magnifiers or screen readers, and training to navigate their environment effectively. Despite challenges, many people with visual impairment lead independent and fulfilling lives, utilizing adaptive techniques and assistive technologies. Accessible environments, inclusive education, and supportive communities are essential for promoting their autonomy and participation in society.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => arabicVisual()));
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


