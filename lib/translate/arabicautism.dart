import 'package:flutter/material.dart';

class arabicautism extends StatefulWidget {
  const arabicautism({super.key});

  @override
  State<arabicautism> createState() => _arabicautismState();
}

class _arabicautismState extends State<arabicautism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التوحد',style: TextStyle(fontWeight: FontWeight.bold),),
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
        child: Text("اضطرابات طيف التوحد: تشمل اضطرابات طيف التوحد مجموعة واسعة من الحالات العصبية التطورية المعقدة المميزة بالتحديات في التفاعل الاجتماعي وصعوبات في التواصل، بالإضافة إلى التصرفات المتكررة. يواجه الأفراد الذين يعانون من طيف التوحد صعوبات في فهم إشارات التواصل الاجتماعي، والتعبير عن أنفسهم بشكل فعّال، وقد يظهرون حركات متكررة أو طقوسًا. يتميز طيف التوحد بتنوع في طريقة ظهوره، حيث يتراوح من الخفيف إلى الشديد بين الأفراد.تلعب التشخيص المبكر والتدخل دورًا حيويًا في تحسين النتائج للأفراد الذين يعانون من طيف التوحد. توفير العلاجات والتدخلات المصممة خصيصًا والتوجيهية يمكن أن يساعد على تطوير المهارات الحيوية وتحقيق حياة مليئة بالإنجازات وفق قدراتهم. البيئات الداعمة التي تتوافق مع احتياجاتهم الفريدة مهمة لرفاهيتهم ودمجهم في المجتمع.",
          style: TextStyle(fontSize: 21),),
      ),
    ),
    ],
    ),
    ),
    );
  }
}