import 'package:flutter/material.dart';

class arabicDyslexia extends StatefulWidget {
  const arabicDyslexia({super.key});

  @override
  State<arabicDyslexia> createState() => _arabicDyslexiaState();
}

class _arabicDyslexiaState extends State<arabicDyslexia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('العسر القرائي',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("العسر القرائي هو اضطراب تعلم محدد يتميز بصعوبات في التعرف على الكلمات بدقة وبسلاسة، وبضعف مهارات الإملاء وفك التشفير. وهو حالة عصبية تؤثر على طريقة تجهيز الدماغ للغة المكتوبة وأحيانًا اللغة المنطوقة أيضًا. قد يواجه الأفراد الذين يعانون من العسر القرائي صعوبات في فهم القراءة، والإملاء، والكتابة على الرغم من وجود مستوى ذكاء متوسط ​​أو فوق المتوسط. غالبًا ما يرتبط العسر القرائي بتحديات في معالجة الأصوات الصوتية، أي القدرة على التعامل مع الأصوات في اللغة. يمكن أن تساعد التعرف المبكر والتدخل، مثل التعليم القرائي المتخصص والتكيفات، الأفراد الذين يعانون من العسر القرائي على التغلب على التحديات والنجاح أكاديميًا ومهنيًا. الوعي والفهم الكافي للعسر القرائي أمران أساسيان لتعزيز الكشف المبكر والدعم والقبول في الإعدادات التعليمية والعملية.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}