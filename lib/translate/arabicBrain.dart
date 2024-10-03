import 'package:flutter/material.dart';
class arabicBrain extends StatefulWidget {
  const arabicBrain({super.key});

  @override
  State<arabicBrain> createState() => _arabicBrainState();
}

class _arabicBrainState extends State<arabicBrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إصابة الدماغ الناجمة عن الإصابة',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("إصابة الدماغ الناجمة عن الإصابة (TBI) تشير إلى الضرر في الدماغ الناتج عن قوة خارجية، مثل الضربة على الرأس أو الإصابة النافذة. يمكن أن تؤدي TBI إلى مشاكل مختلفة في الوظائف العقلية والجسدية والعاطفية، اعتمادًا على شدة وموقع الإصابة. تشمل الأعراض الشائعة الصداع ومشاكل الذاكرة والتغيرات في المزاج أو السلوك. يمكن أن تتضمن العلاج والتأهيل لـ TBI التدخلات الطبية والعلاج والخدمات الداعمة لعلاج النقص الوظيفي وتعزيز الشفاء. تساعد التدابير الوقائية مثل ارتداء الخوذات أثناء ممارسة الرياضة واستخدام أحزمة الأمان في المركبات في تقليل خطر TBI.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}