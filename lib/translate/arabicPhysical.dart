import 'package:flutter/material.dart';

class arabicPhysical extends StatefulWidget {
  const arabicPhysical({super.key});

  @override
  State<arabicPhysical> createState() => _arabicPhysicalState();
}

class _arabicPhysicalState extends State<arabicPhysical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإعاقة الجسدية',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("الإعاقة الجسدية تشير إلى أي حالة تؤثر على وظيفة الشخص الجسدية أو حركته أو مهارته في الحركة أو قوته، وغالبًا ما ينتج عن ذلك قيود في الحركة أو الأنشطة اليومية. قد تشمل أسباب الإعاقة الجسدية الحالات الخلقية، أو الإصابات، أو الأمراض التقدمية. يمكن أن تعزز الأجهزة المساعدة مثل الكراسي المتحركة، والأطراف الصناعية، أو مساعدات الحركة، الاستقلالية والتوفر للأفراد ذوي الإعاقة الجسدية. البيئات المتاحة والتصميم الشامل وخيارات النقل ضرورية لتعزيز إدماج ومشاركة الأشخاص ذوي الإعاقة الجسدية في المجتمع. تعمل جهود الدعوة وحركات حقوق الأشخاص ذوي الإعاقة على إزالة الحواجز وضمان تكافؤ الفرص للأفراد ذوي الإعاقة الجسدية.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}