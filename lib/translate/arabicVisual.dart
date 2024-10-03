import 'package:flutter/material.dart';

class arabicVisual extends StatefulWidget {
  const arabicVisual({super.key});

  @override
  State<arabicVisual> createState() => _arabicVisualState();
}

class _arabicVisualState extends State<arabicVisual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإعاقة البصرية', style: TextStyle(fontWeight: FontWeight
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
                "الإعاقة البصرية تشير إلى مجموعة من الحالات التي تؤثر على قدرة الفرد على الرؤية، تتراوح من البصر الجزئي إلى العمى. يمكن أن تنجم عن مختلف الأسباب، بما في ذلك الأمراض العينية، أو الإصابات، أو الحالات العصبية. تؤثر الإعاقة البصرية على الأنشطة اليومية مثل القراءة، والحركة، والتعرف على الوجوه أو الأشياء. غالبًا ما يحتاج الأفراد ذوو الإعاقة البصرية إلى أدوات متخصصة مثل المكبرات أو قارئات الشاشة، والتدريب للتنقل بفعالية في بيئتهم. على الرغم من التحديات، يعيش العديد من الأشخاص ذوو الإعاقة البصرية حياة مستقلة ومليئة بالإنجازات، بفضل التقنيات التكيفية والتكنولوجيا المساعدة. البيئات المتاحة، والتعليم الشامل، والمجتمعات الداعمة ضرورية لتعزيز استقلاليتهم ومشاركتهم في المجتمع.",
                style: TextStyle(fontSize: 21),),
            ),
          ),
          ],
        ),
      ),
    );
  }
}