import 'package:flutter/material.dart';
class arabiclanguage extends StatefulWidget {
  const arabiclanguage({super.key});

  @override
  State<arabiclanguage> createState() => _arabiclanguageState();
}

class _arabiclanguageState extends State<arabiclanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الضعف في اللغة',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("الضعف في اللغة يشير إلى صعوبات في التواصل قد تؤثر على إنتاج الكلام، فهم اللغة، أو التفاعل الاجتماعي. قد تنجم هذه الاضطرابات عن أسباب متنوعة، بما في ذلك التأخيرات التنموية، أو الحالات العصبية، أو فقدان السمع، أو الصدمات. يمكن أن تشمل الاضطرابات في الكلام اضطرابات التحدث، واضطرابات السلاسة (مثل التتعثر في الكلام)، أو اضطرابات الصوت (مثل الخشونة). قد يتجلى الضعف في اللغة على شكل صعوبات في فهم واستخدام الكلمات، أو الجمل، أو مهارات التواصل الاجتماعي. قد يشمل علاج الضعف في الكلام أو اللغة جلسات علاج النطق، وأجهزة التواصل البديلة والمكملة (AAC)، والتدخلات لتحسين تطور اللغة ومهارات التواصل الاجتماعي. التدخل المبكر والدعم المستمر ضروريان لتقليل تأثير الضعف في الكلام أو اللغة على النجاح الأكاديمي والاجتماعي والمهني.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
