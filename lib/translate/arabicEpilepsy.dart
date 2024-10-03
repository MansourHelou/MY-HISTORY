import 'package:flutter/material.dart';

class arabicEpilepsy extends StatefulWidget {
  const arabicEpilepsy({super.key});

  @override
  State<arabicEpilepsy> createState() => _arabicEpilepsyState();
}

class _arabicEpilepsyState extends State<arabicEpilepsy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصرع ',style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Text("الصرع هو اضطراب عصبي يتميز بنوبات متكررة، والتي هي اضطرابات كهربائية مفاجئة وغير متحكم فيها في الدماغ. يمكن أن تختلف النوبات في النوع والشدة، مما يؤثر على الوعي أو الحركة أو الإحساس. يمكن أن يكون للصرع أسباب متنوعة، بما في ذلك العوامل الوراثية، أو الإصابة في الدماغ، أو الحالات الطبية. بينما يمكن أن تكون النوبات مزعجة وقد تهدد الحياة، يمكن للعديد من الأفراد الذين يعانون من الصرع إدارة حالتهم بالأدوية وتعديلات نمط الحياة، وفي بعض الحالات، الجراحة. التعليم وخطط إدارة النوبات والمجتمعات الداعمة ضرورية لتعزيز السلامة وجودة الحياة للأفراد الذين يعيشون مع الصرع.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}