import 'package:flutter/material.dart';

class gBrain extends StatefulWidget {
  const gBrain({super.key});

  @override
  State<gBrain> createState() => _gBrainState();
}

class _gBrainState extends State<gBrain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Traumastic brain injury',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        child: Column(

          children: <Widget> [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (1).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (2).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (3).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (4).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (5).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (6).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (7).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (8).jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (9).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),

                Container(
                  width: 190.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'images/brain (10).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),


          ],
        ),
      ),

    );
  }
}
