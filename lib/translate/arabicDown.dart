import 'package:flutter/material.dart';

class arabicDown extends StatefulWidget {
  const arabicDown({super.key});

  @override
  State<arabicDown> createState() => _arabicDownState();
}

class _arabicDownState extends State<arabicDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('متلازمة داون', style: TextStyle(fontWeight: FontWeight
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
                "متلازمة داون هي اضطراب جيني يحدث بسبب وجود كروموسوم إضافي 21. وهي مرتبطة بالإعاقات الذهنية وسمات وجهية مميزة ومشاكل صحية معينة. قد يواجه الأفراد الذين يعانون من متلازمة داون تأخرًا في التطور الجسدي والعقلي، بالإضافة إلى قوى وتحديات فريدة. يمكن أن تساعد برامج التدخل المبكر والدعم التعليمي والرعاية الطبية الأفراد الذين يعانون من متلازمة داون على تحقيق إمكاناتهم الكاملة والعيش حياة مليئة بالإنجازات. المجتمعات الشاملة والفرص للاندماج الاجتماعي ضرورية لتعزيز رفاهيتهم ودمجهم في المجتمع.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
