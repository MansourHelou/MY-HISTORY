import 'package:flutter/material.dart';
class arabicIntellectual extends StatefulWidget {
  const arabicIntellectual({super.key});

  @override
  State<arabicIntellectual> createState() => _arabicIntellectualState();
}

class _arabicIntellectualState extends State<arabicIntellectual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإعاقة العقلية',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 700,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("الإعاقة العقلية تتضمن قيودًا في الوظائف العقلية والسلوكيات التكيفية، التي تؤثر على المهارات الاجتماعية والعملية اليومية. وغالبًا ما تظهر قبل سن 18 عامًا ويمكن أن تختلف في شدتها، من الخفيفة إلى العميقة. قد تشمل أسباب الإعاقة العقلية الحالات الجينية، أو التعرض السابق للسموم خلال فترة الحمل، أو المضاعفات أثناء الولادة. قد يحتاج الأفراد الذين يعانون من الإعاقة العقلية إلى دعم وخدمات مستمرة، بما في ذلك التعليم المتخصص والتدريب المهني والبرامج القائمة على المجتمع. مع التدخلات والتكيفات المناسبة، يمكن للعديد من الأشخاص ذوي الإعاقة العقلية أن يعيشوا حياة ذات معنى وأن يساهموا في مجتمعاتهم.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}