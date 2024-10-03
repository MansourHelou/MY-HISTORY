import 'package:flutter/material.dart';

class arabicpulsy extends StatefulWidget {
  const arabicpulsy({super.key});

  @override
  State<arabicpulsy> createState() => _arabicpulsyState();
}

class _arabicpulsyState extends State<arabicpulsy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('شلل الدماغ',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("شلل الدماغ: هو مجموعة من الاضطرابات الحركية الدائمة التي تظهر في سن مبكرة وتؤثر على الوضعية والتنسيق والتحكم في العضلات. ينجم عن تلف في تطور الدماغ، وغالبًا ما يحدث هذا التلف قبل الولادة أو أثناءها أو بعد وقت قصير من الولادة. تختلف شدة وأعراض شلل الدماغ بشكل واسع بين الأفراد، حيث تتراوح من الإعاقات الحركية الخفيفة إلى الإعاقات الجسدية العميقة. على الرغم من التحديات التي يواجهونها، يمكن للأفراد الذين يعانون من شلل الدماغ أن يعيشوا حياة مليئة بالإنجازات بفضل الرعاية الطبية المناسبة والعلاج وتقنيات المساعدة. تلعب البرامج التدخل المبكر دورًا حيويًا في تحسين النتائج وتمكين الأفراد المصابين بشلل الدماغ من تحقيق إمكاناتهم الكاملة. تعزز المجتمعات الداعمة والبيئات الشاملة مشاركتهم ودمجهم في المجتمع، مما يعزز رفاهيتهم وكرامتهم.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}