import 'package:flutter/material.dart';

class arabicADHD extends StatefulWidget {
  const arabicADHD({super.key});

  @override
  State<arabicADHD> createState() => _arabicADHDState();
}

class _arabicADHDState extends State<arabicADHD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اضطراب فرط النشاط', style: TextStyle(fontWeight: FontWeight
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
                "اضطراب فرط النشاط وفرط الانتباه (ADHD): ADHD هو اضطراب عصبي يتميز بصعوبات في التركيز والنشاط الزائد والاندفاع. قد يواجه الأفراد الذين يعانون من ADHD صعوبة في التركيز وتنظيم المهام أو السيطرة على الاندفاعات، مما يؤدي إلى تحديات في البيئة الأكاديمية أو العملية أو الاجتماعية. يستمر ADHD غالبًا حتى في سن البلوغ، مما يؤثر على جوانب مختلفة من الحياة اليومية. يتضمن العلاج عادة مزيجًا من الدواء والعلاج والتدخلات السلوكية المصممة حسب الاحتياجات الفردية. مع الدعم المناسب والاستراتيجيات، يمكن للأفراد الذين يعانون من ADHD أن يتعلموا إدارة أعراضهم بفعالية وأن ينجحوا في مجالات حياتهم الشخصية والمهنية.",

                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}