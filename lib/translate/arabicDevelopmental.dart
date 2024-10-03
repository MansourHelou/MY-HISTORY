import 'package:flutter/material.dart';

class arabicDev extends StatefulWidget {
  const arabicDev({super.key});

  @override
  State<arabicDev> createState() => _arabicDevState();
}

class _arabicDevState extends State<arabicDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإعاقة التنموية',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("الإعاقة التنموية هي فئة واسعة تضم مجموعة متنوعة من الحالات المزمنة التي تنشأ قبل سن البلوغ وتؤدي إلى قيود كبيرة في التطور الجسدي أو العقلي أو السلوكي. قد تؤثر هذه الإعاقات على التعلم، والتواصل، والحركة، ورعاية الذات، ومهارات التواصل الاجتماعي، وعادةً ما تتطلب الدعم والخدمات طوال الحياة. أمثلة على الإعاقة التنموية تشمل اضطراب طيف التوحد (ASD)، والإعاقة العقلية، وشلل الدماغ، ومتلازمات جينية مثل متلازمة داون. التدخل المبكر والدعم التعليمي والخدمات المبنية على المجتمع ضرورية لتعزيز رفاهية الأفراد ذوي الإعاقة التنموية واستقلاليتهم وإدماجهم. تعمل جهود الدعوة وحركات حقوق الأشخاص ذوي الإعاقة على ضمان المساواة في الحقوق والفرص والوصول إلى الموارد للأشخاص ذوي الإعاقة التنموية.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
