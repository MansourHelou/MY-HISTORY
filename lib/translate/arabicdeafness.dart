import 'package:flutter/material.dart';

class arabicDeafness extends StatefulWidget {
  const arabicDeafness({super.key});

  @override
  State<arabicDeafness> createState() => _arabicDeafnessState();
}

class _arabicDeafnessState extends State<arabicDeafness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('فقدان السمع أو الصمم',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[ Container(
            width: 400,
            height: 720,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("فقدان السمع أو الصمم: يشير فقدان السمع أو الصمم إلى الضعف الجزئي أو الكامل في قدرة السمع، والذي يمكن أن يكون ناتجًا عن عوامل متنوعة، بما في ذلك الحالات الجينية، أو المرض، أو الإصابة، أو الشيخوخة. قد يكون فقدان السمع موصولًا (يشمل الأذن الخارجية أو الوسطى)، أو حسيًا (يشمل الأذن الداخلية أو العصب السمعي)، أو مختلطًا. الصمم يشير إلى فقدان سمع عميق أو عدم القدرة على سماع الصوت على الإطلاق. يمكن أن يكون لفقدان السمع تأثيرات كبيرة على التواصل، وتطوير اللغة، والتفاعل الاجتماعي، والتحصيل التعليمي. تشمل خيارات العلاج لفقدان السمع استخدام أجهزة السمع، وزرع القوقعة، وأجهزة الاستماع المساعدة، وخدمات التأهيل السمعي. تلعب ثقافة الصم ولغة الإشارة دورًا أساسيًا في الهوية والتواصل للأشخاص الصم أو ذوي صعوبات في السمع. تعزز التسهيلات المتاحة، مثل الشرح الكتابي، ومترجمي لغة الإشارة، وأنظمة الحلقة، الوصول المتساوي إلى المعلومات والخدمات للأشخاص الذين يعانون من فقدان السمع.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}