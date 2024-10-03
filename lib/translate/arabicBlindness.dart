import 'package:flutter/material.dart';
class arabicBlindness extends StatefulWidget {
  const arabicBlindness({super.key});

  @override
  State<arabicBlindness> createState() => _arabicBlindnessState();
}

class _arabicBlindnessState extends State<arabicBlindness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('العمى', style: TextStyle(fontWeight: FontWeight
            .bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[ Container(
            width: 400,
            height: 700,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "العمى هو الغياب الكامل أو القيود الشديدة في الرؤية، مما يتسبب في تحديات كبيرة في الأنشطة اليومية. يمكن أن يكون العمى ناتجًا عن عوامل متعددة، بما في ذلك الأمراض العينية، أو الإصابات، أو الحالات الخلقية. الأفراد الذين يعانون من العمى يعتمدون على وسائط حسية بديلة مثل اللمس والسمع والشم للتنقل في بيئتهم والتفاعل مع العالم. تقنيات التكيف والتكنولوجيا المساعدة مثل برايل والعصي البيضاء وقارئات الشاشة تعزز استقلاليتهم ووصولهم إلى المعلومات. التعليم الشامل وفرص العمل والبيئات المتاحة ضرورية لتعزيز الاندماج الكامل ومشاركة الأفراد الذين يعانون من العمى في المجتمع. جهود الدعوة والحملات التوعية تساهم في كسر الحواجز وتعزيز المساواة في الحقوق والفرص للأشخاص الذين يعانون من العمى.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}